<div class="main-sidebar">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{ route ('admin_home') }}">Admin Panel</a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="{{ route ('admin_home') }}"></a>
        </div>

        <ul class="sidebar-menu">

            <li class="{{ Request::is('admin/home') ? 'active' : '' }}"><a class="nav-link" href="{{ route ('admin_home') }}"
                data-bs-toggle="tooltip" data-bs-placement="right"
                 data-bs-title="Dashboard">
                 <i class="fas fa-hand-point-right"></i> <span>Dashboard</span></a></li>

            <li class="{{ Request::is('admin/settings/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_settings') }}"
                data-bs-toggle="tooltip" data-bs-placement="right"
                data-bs-title="Settings">
                <i class="fas fa-hand-point-right"></i> <span>Settings</span></a></li>

            <li class="nav-item dropdown {{ Request::is('admin/home_page')|| Request::is('admin/faq_page')|| Request::is('admin/blog_page')||
             Request::is('admin/term_page')|| Request::is('admin/privacy_page')|| Request::is('admin/contact_page')|| Request::is('admin/job_category_page')||
              Request::is('admin/pricing_page')|| Request::is('admin/other_page') ? 'active' : '' }}"><a class="nav-link" href="{{ route ('admin_home') }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Page Settings</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/home_page') ? 'active' : '' }}"><a class="nav-link" 
                        href="{{ route ('admin_home_page') }}"><i class="fas fa-angle-right"></i> Home</a></li>

                    <li class="{{ Request::is('admin/faq_page') ? 'active' : '' }}"><a class="nav-link"
                         href="{{ route ('admin_faq_page') }}"><i class="fas fa-angle-right"></i> FAQ</a></li>

                    <li class="{{ Request::is('admin/blog_page') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route ('admin_blog_page') }}"><i class="fas fa-angle-right"></i> Blog</a></li>

                    <li class="{{ Request::is('admin/term_page') ? 'active' : '' }}"><a class="nav-link"
                         href="{{ route ('admin_term_page') }}"><i class="fas fa-angle-right"></i>Term Of Use</a></li>

                    <li class="{{ Request::is('admin/privacy_page') ? 'active' : '' }}"><a class="nav-link"
                         href="{{ route ('admin_privacy_page') }}"><i class="fas fa-angle-right"></i>Privacy Policy</a></li>

                        
                    <li class="{{ Request::is('admin/contact_page') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route ('admin_contact_page') }}"><i class="fas fa-angle-right"></i>Contact </a></li>
                    
                    <li class="{{ Request::is('admin/job_category_page') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route ('admin_job_category_page') }}"><i class="fas fa-angle-right"></i>Job Category</a></li>
                    
                    <li class="{{ Request::is('admin/pricing_page') ? 'active' : '' }}"><a class="nav-link"
                        href="{{ route ('admin_pricing_page') }}"><i class="fas fa-angle-right"></i>Pricing</a></li>
                
                        <li class="{{ Request::is('admin/other_page') ? 'active' : '' }}"><a class="nav-link"
                            href="{{ route ('admin_other_page') }}"><i class="fas fa-angle-right"></i>Other </a></li>

                
                    </ul>
            </li>


            
            <li class="nav-item dropdown {{ Request::is('admin/job_category/*')||Request::is('admin/job_location/*')||Request::is('admin/job_type/*')||
            Request::is('admin/job_experience/*')||Request::is('admin/job_gender/*') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Job Section</span></a>
                <ul class="dropdown-menu">
                    <li class="{{ Request::is('admin/job_category/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_category') }}"><i class="fas fa-angle-right"></i>Job Category</a></li>
                    <li class="{{ Request::is('admin/job_location/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_location') }}"><i class="fas fa-angle-right"></i>Job Location</a></li>
                    <li class="{{ Request::is('admin/job_type/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_type') }}"><i class="fas fa-angle-right"></i>Job Type</a></li>
                    <li class="{{ Request::is('admin/job_experience/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_experience') }}"><i class="fas fa-angle-right"></i>Job Experience</a></li>
                    <li class="{{ Request::is('admin/job_gender/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_gender') }}"><i class="fas fa-angle-right"></i>Job Gender</a></li>
                    <li class="{{ Request::is('admin/job_salary_range/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_job_salary_range') }}"><i class="fas fa-angle-right"></i>Job Salary Range</a></li>
                   
                    <li class=""><a class="nav-link" href=""><i class="fas fa-angle-right"></i> Terms</a></li>
                </ul>
            </li>

            <li class="nav-item dropdown {{ Request::is('admin/company_location/*')||Request::is('admin/company_industry/*')||Request::is('admin/company_size/*') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Company Section</span></a>
                <ul class="dropdown-menu">
                     <li class="{{ Request::is('admin/company_location/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_location') }}"><i class="fas fa-angle-right"></i>Company Location</a></li>
                     <li class="{{ Request::is('admin/company_industry/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_industry') }}"><i class="fas fa-angle-right"></i>Company Industry</a></li>
                     <li class="{{ Request::is('admin/company_size/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_company_size') }}"><i class="fas fa-angle-right"></i>Company Size</a></li>
                    </ul>
            </li>

            <li class="nav-item dropdown {{ Request::is('admin/subscriber_show')||Request::is('admin/subscribers_send_email') ? 'active' : '' }}">
                <a href="#" class="nav-link has-dropdown"><i class="fas fa-hand-point-right"></i><span>Subscriber Section</span></a>
                <ul class="dropdown-menu">
                     <li class="{{ Request::is('admin/all_subscribers') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_all_subscribers') }}"><i class="fas fa-angle-right"></i>All Subscribers </a></li>
                     <li class="{{ Request::is('admin/subscribers_send_email') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_subscribers_send_email') }}"><i class="fas fa-angle-right"></i>Send Email to Subscriber </a></li>
                    
                    </ul>
            </li>

            <li class="{{ Request::is('admin/companies')||Request::is('admin/companies_detail/*')||
            Request::is('admin/companies_jobs/*')||Request::is('admin/companies_applicants/*')||Request::is('admin/companies_applicant_resume/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_companies') }}"
                data-bs-toggle="tooltip" data-bs-placement="right"
                 data-bs-title="Company Profile"><i class="fas fa-hand-point-right"></i> <span>Company Profile</span></a></li>

            <li class="{{ Request::is('admin/candidates')||Request::is('admin/candidates_detail/*')||
            Request::is('admin/candidates_applied_jobs/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_candidates') }}"
                data-bs-toggle="tooltip" data-bs-placement="right"
                data-bs-title="Candidate Profile"><i class="fas fa-hand-point-right"></i> <span>Candidate Profile</span></a></li>
     
                

            <li class="{{ Request::is('admin/why_choose/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_why_choose_item') }}"
                data-bs-toggle="tooltip" data-bs-placement="right"
                 data-bs-title="Why Choose Items"><i class="fas fa-hand-point-right"></i> <span>Why Choose Items</span></a></li>

                 <li class="{{ Request::is('admin/testimonial/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_testimonial') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="Testimonials"><i class="fas fa-hand-point-right"></i> <span>Testimonials</span></a></li>

                <li class="{{ Request::is('admin/post/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_post') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="Posts"><i class="fas fa-hand-point-right"></i> <span>Posts</span></a></li>
                    
                <li class="{{ Request::is('admin/faq/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_faq') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="FAQs"><i class="fas fa-hand-point-right"></i> <span>FAQ</span></a></li>
                
                <li class="{{ Request::is('admin/package/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_package') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="Packages"><i class="fas fa-hand-point-right"></i> <span>Package</span></a></li>

                <li class="{{ Request::is('admin/advertisement/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_advertisement') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="Packages"><i class="fas fa-hand-point-right"></i> <span>Advertisement</span></a></li>
        
                <li class="{{ Request::is('admin/banner/*') ? 'active' : '' }}"><a class="nav-link" href="{{ route('admin_banner') }}"
                    data-bs-toggle="tooltip" data-bs-placement="right"
                    data-bs-title="Packages"><i class="fas fa-hand-point-right"></i> <span>Banner</span></a></li>
        </ul>

    </aside>
</div>