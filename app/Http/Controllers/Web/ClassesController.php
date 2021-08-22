<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\FeatureWebinar;
use App\Models\Ticket;
use App\Models\Webinar;
use App\Models\WebinarFilterOption;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ClassesController extends Controller
{
    public function ajax(Request $request){
        $webinarsQuery = Webinar::where('status', 'active')
            ->where('private', false);

        $webinarsQuery = $this->handleFilters($request, $webinarsQuery);

        $coursesCount = $webinarsQuery->count();

        $webinars = $webinarsQuery->orderBy('webinars.created_at', 'desc')
            ->orderBy('webinars.updated_at', 'desc')
            ->with(['tickets', 'feature'])
            ->paginate(6);

        

        
        
        $artilces = '';
        foreach ($webinars as $webinar) {
            
            $artilces += '<div class="webinar-card webinar-list webinar-list-2 d-flex mt-30"><div class="image-box">';
            // if($webinar->bestTicket() < $webinar->price){

            //     $artilces.= '<span class="badge badge-danger">'. trans('public.offer',['off' => $webinar->bestTicket(true)['percent']]) .'</span>';
            // }elseif(empty($isFeature) and !empty($webinar->feature)) {

            //     $artilces.= '<span class="badge badge-warning">'. trans('home.featured').'</span>';
            // } elseif($webinar->type == 'webinar') {

            //     if($webinar->start_date > time()){

            //         $artilces.= '<span class="badge badge-primary">'. trans('panel.not_conducted') .'</span>';
            //     } elseif($webinar->isProgressing()){

            //         $artilces.= '<span class="badge badge-secondary">'. trans('webinars.in_progress').'</span>';
            //     } else {

            //         $artilces.= '<span class="badge badge-secondary">'. trans('public.finished').'</span>';
            //     }

            // } else{

            //     $artilces.= '<span class="badge badge-primary">'. trans('webinars.'.$webinar->type).'</span>';
            // }
            $artilces.='<img src="' . $webinar->getImage() .'" class="img-cover" alt="'. $webinar->title .'">';
            $artilces.= '<div class="progress-and-bell d-flex align-items-center">';
            if($webinar->type == 'webinar'){

                $artilces.= '<a href="'.$webinar->addToCalendarLink() .'" target="_blank" class="webinar-notify d-flex align-items-center justify-content-center">';
                $artilces.= '<i data-feather="bell" width="20" height="20" class="webinar-icon"></i>';
                $artilces.= '</a>';
            }
            if($webinar->type == 'webinar'){

                $artilces.= '<div class="progress ml-10">';
                $artilces.= '<span class="progress-bar" style="width: '.$webinar->getProgress().'%"></span>';
                $artilces.= '</div>';
            }
            $artilces.= '<div class="progress ml-10">';
            $artilces.= '</div>';
            $artilces.= '</div>';
            $artilces.= '<div class="webinar-card-body w-100 d-flex flex-column">';
            $artilces.= '<div class="d-flex align-items-center justify-content-between">';
            $artilces.= '<a href="'. $webinar->getUrl().'">';
            $artilces.= '<h3 class="mt-15 webinar-title font-weight-bold font-16 text-dark-blue">'.$webinar->title.'</h3>';
            $artilces.= '</a>';
            $artilces.= '</div>';
            if(!empty($webinar->category)){

                $artilces.= '<span class="d-block font-14 mt-10">'.trans('public.in') .' <a href="'.$webinar->category->getUrl().'" target="_blank" class="text-decoration-underline">'. $webinar->category->title.'</a></span>';
            }
            
            $artilces.= '<div class="avatar">';
            $artilces.= '<img src="'. $webinar->teacher->getAvatar() .'" class="img-cover" alt="'. $webinar->teacher->full_name .'">';
            $artilces.= '</div>';
            $artilces.= '<a href="'.$webinar->teacher->getProfileUrl() .'" target="_blank" class="user-name ml-5 font-14">'. $webinar->teacher->full_name .'</a>';
            $artilces.= '</div>';
            $artilces.= '<div class="d-flex justify-content-between mt-auto">';
            $artilces.= '<div class="d-flex align-items-center">';
            $artilces.= '<div class="d-flex align-items-center">';
            $artilces.= '<i data-feather="clock" width="20" height="20" class="webinar-icon"></i>';
            $artilces.= '<span class="duration ml-5 font-14">'. convertMinutesToHourAndMinute($webinar->duration) .' '. trans('home.hours') .'</span>';
            $artilces.= '</div>';
            $artilces.= '<div class="vertical-line h-25 mx-15"></div>';
            $artilces.= '<div class="d-flex align-items-center">';
            $artilces.= '<i data-feather="calendar" width="20" height="20" class="webinar-icon"></i>';
            $artilces.= '<span class="date-published ml-5 font-14">'. dateTimeFormat(!empty($webinar->start_date) ? $webinar->start_date : $webinar->created_at,'j F Y') .'</span>';
            $artilces.= '</div>';
            $artilces.= '</div>';
            $artilces.= '<div class="webinar-price-box d-flex flex-column justify-content-center align-items-center">';
            if(!empty($webinar->price) and $webinar->price > 0){

                if($webinar->bestTicket() < $webinar->price){
                    $artilces.= '<span class="off">'. $currency .' '. number_format($webinar->price,2) .'</span>';
                    $artilces.= '<span class="real">'. $currency .' '. number_format($webinar->bestTicket(),2) .'</span>';
                } else {

                    $artilces.= '<span class="real">'. $currency .' '. number_format($webinar->price,2) .'</span>';
                }
            } else {

                $artilces.= '<span class="real font-14">'. trans('public.free') .'</span>';
            }
            $artilces.= '</div>';
            $artilces.= '</div>';
            $artilces.= '</div>';
            $artilces.= '</div>';

                
        }

        return $artilces;
    
    }


    public function index(Request $request)
    {
        $webinarsQuery = Webinar::where('status', 'active')
            ->where('private', false);

        $webinarsQuery = $this->handleFilters($request, $webinarsQuery);

        $coursesCount = $webinarsQuery->count();

        $webinars = $webinarsQuery->orderBy('webinars.created_at', 'desc')
            ->orderBy('webinars.updated_at', 'desc')
            ->with(['tickets', 'feature'])
            ->paginate(6);

        $seoSettings = getSeoMetas('classes');
        $pageTitle = $seoSettings['title'] ?? '';
        $pageDescription = $seoSettings['description'] ?? '';
        $pageRobot = getPageRobot('classes');

        $data = [
            'pageTitle' => $pageTitle,
            'pageDescription' => $pageDescription,
            'pageRobot' => $pageRobot,
            'webinars' => $webinars,
            'coursesCount' => $coursesCount
        ];

       

        return view(getTemplate() . '.pages.classes', $data);
    }

    public function handleFilters($request, $query)
    {
        $upcoming = $request->get('upcoming', null);
        $isFree = $request->get('free', null);
        $withDiscount = $request->get('discount', null);
        $isDownloadable = $request->get('downloadable', null);
        $sort = $request->get('sort', null);
        $filterOptions = $request->get('filter_option', []);
        $typeOptions = $request->get('type', []);
        $moreOptions = $request->get('moreOptions', []);

        if (!empty($upcoming) and $upcoming == 'on') {
            $query->whereNotNull('start_date')
                ->where('start_date', '>=', time());
        }

        if (!empty($isFree) and $isFree == 'on') {
            $query->where(function ($qu) {
                $qu->whereNull('price')
                    ->orWhere('price', '0');
            });
        }

        if (!empty($isDownloadable) and $isDownloadable == 'on') {
            $query->where('downloadable', 1);
        }

        if (!empty($withDiscount) and $withDiscount == 'on') {
            $now = time();
            $webinarIdsHasDiscount = [];

            $tickets = Ticket::where('start_date', '<', $now)
                ->where('end_date', '>', $now)
                ->get();

            foreach ($tickets as $ticket) {
                if ($ticket->isValid()) {
                    $webinarIdsHasDiscount[] = $ticket->webinar_id;
                }
            }

            $webinarIdsHasDiscount = array_unique($webinarIdsHasDiscount);

            $query->whereIn('webinars.id', $webinarIdsHasDiscount);
        }

        if (!empty($sort)) {
            if ($sort == 'expensive') {
                $query->orderBy('price', 'desc');
            }

            if ($sort == 'inexpensive') {
                $query->orderBy('price', 'asc');
            }

            if ($sort == 'bestsellers') {
                $query->whereHas('sales')
                    ->with('sales')
                    ->get()
                    ->sortBy(function ($qu) {
                        return $qu->sales->count();
                    });
            }

            if ($sort == 'best_rates') {
                $query->whereHas('reviews', function ($query) {
                    $query->where('status', 'active');
                })->with('reviews')
                    ->get()
                    ->sortBy(function ($qu) {
                        return $qu->reviews->avg('rates');
                    });
            }
        }

        if (!empty($filterOptions) and is_array($filterOptions)) {
            $webinarIdsFilterOptions = WebinarFilterOption::whereIn('filter_option_id', $filterOptions)
                ->pluck('webinar_id')
                ->toArray();

            $query->whereIn('webinars.id', $webinarIdsFilterOptions);
        }

        if (!empty($typeOptions) and is_array($typeOptions)) {
            $query->whereIn('type', $typeOptions);
        }

        if (!empty($moreOptions) and is_array($moreOptions)) {
            if (in_array('subscribe', $moreOptions)) {
                $query->where('subscribe', 1);
            }

            if (in_array('certificate_included', $moreOptions)) {
                $query->whereHas('quizzes', function ($query) {
                    $query->where('certificate', 1)
                        ->where('status', 'active');
                });
            }

            if (in_array('with_quiz', $moreOptions)) {
                $query->whereHas('quizzes', function ($query) {
                    $query->where('status', 'active');
                });
            }

            if (in_array('featured', $moreOptions)) {
                $query->whereHas('feature', function ($query) {
                    $query->whereIn('page', ['home_categories', 'categories'])
                        ->where('status', 'publish');
                });
            }
        }

        return $query;
    }
}
