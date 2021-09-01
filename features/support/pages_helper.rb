# Instancia os pages objects
module Pages
  def jobs_page
    @jobs_page = JobsPage.new
  end

  def login_page
    @login_page = LoginPage.new
  end

  def curriculum_page
    @curriculum_page = CurriculumPage.new
  end

  def profiler_page
    @profiler_page = ProfilerPage.new
  end

  def status_page
    @status_page = StatusPage.new
  end
end

World(Pages)
