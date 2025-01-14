<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('page_home_items', function (Blueprint $table) {
            $table->id();
            $table->text('heading');
            $table->text('text')->nullable();
            $table->text('job_title');
            $table->text('job_category');
            $table->text('job_location');
            $table->text('search');
            $table->text('background');
            $table->text('job_category_heading');
            $table->text('job_category_subheading')->nullable();
            $table->text('job_category_status');
            $table->text('why_choose_heading');
            $table->text('why_choose_subheading')->nullable();
            $table->text('why_choose_background');
            $table->text('why_choose_status');
            $table->text('featured_jobs_heading');
            $table->text('featured_jobs_subheading')->nullable();;
            $table->text('featured_jobs_status');
            $table->text('testimonial_heading');
            $table->text('testimonial_background');
            $table->text('testimonial_status');
            $table->text('blog_heading');
            $table->text('blog_subheading')->nullable();
            $table->text('blog_status');


            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('page_home_items');
    }
};
