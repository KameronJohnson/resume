class Job

  @@all_jobs = []

  define_method(:initialize) do |company_name, phone_number, email|
    @company_name = company_name
    @phone_number = phone_number
    @email = email
  end

  define_singleton_method(:all) do
    @@all_jobs
  end

  define_method(:save) do
    @@all_jobs.push(self)
  end

  define_singleton_method(:clear) do
    @@all_jobs = []
  end

  define_method(:get_company_name) do
    @company_name
  end

  define_method(:get_phone_number) do
    @phone_number
  end

  define_method(:get_email) do
    @email
  end

  define_singleton_method(:remove) do |company_name|
    @@all_jobs.each() do |job|
      if company_name == job.get_company_name()
        @@all_jobs.delete(job)
      end
    end
  end
end
