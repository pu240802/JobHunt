<ul class="list-group list-group-flush">
    <li class="list-group-item  {{ Request::is('company/dashboard')? 'active' : ''}}">
        <a href="{{ route('company_dashboard') }}"
            >Dashboard</a
        >
    </li>
    <li class="list-group-item {{ Request::is('company/make_payment')? 'active' : ''}}">
        <a href="{{ route('company_make_payment') }}"
            >Make Payment</a
        >
    </li>
    <li class="list-group-item  {{ Request::is('company/orders')? 'active' : ''}}">
        <a href="{{ route('company_orders') }}">Orders</a>
    </li>
    <li class="list-group-item {{ Request::is('company/create_job')? 'active' : ''}}">
        <a href="{{ route('company_jobs_create') }}"
            >Create Job</a
        >
    </li>
    <li class="list-group-item {{ Request::is('company/jobs')? 'active' : ''}}">
        <a href="{{ route('company_jobs') }}">All Jobs</a>
    </li>
    <li class="list-group-item {{ Request::is('company/photos')? 'active' : ''}}">
        <a href="{{ route('company_photos') }}">Photos</a>
    </li>
    <li class="list-group-item {{ Request::is('company/videos')? 'active' : ''}}">
        <a href="{{ route('company_videos') }}">Videos</a>
    </li>
    <li class="list-group-item {{ Request::is('company/candidate_applications')? 'active' : ''}}">
        <a href="{{ route('company_candidate_applications') }}"
            >Candidate Applications</a
        >
    </li>
    <li class="list-group-item  {{ Request::is('company/edit_profile')? 'active' : ''}}">
        <a href="{{ route('company_edit_profile') }}"
            >Edit Profile</a
        >
    </li>
    <li class="list-group-item  {{ Request::is('company/edit_password')? 'active' : ''}}">
        <a href="{{ route('company_edit_password') }}"
            >Edit Password</a
        >
    </li>
    <li class="list-group-item">
        <a href="{{ route('company_logout') }}">Logout</a>
    </li>
</ul>