require('rspec')
require('resume')
require('pry')


describe(Job) do

  before() do
    Job.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Job.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("stores the parameters of each job into resume list") do
      test_job = Job.new("Barf", "5035551111", "barf@gmail.com")
      test_job.save()
      expect(Job.all()).to(eq([test_job]))
    end
  end

  describe(".clear") do
    it("empties out all the jobs") do
      expect(Job.clear()).to(eq([]))
    end
  end

  describe("#get_company_name") do
    it("returns the company name from job list") do
      test_job = Job.new("Barf", "5035551111", "barf@gmail.com")
      expect(test_job.get_company_name()).to(eq("Barf"))
    end
  end

  describe("#get_phone_number") do
    it("returns the company phone number from job list") do
      test_job = Job.new("Barf", "5035551111", "barf@gmail.com")
      expect(test_job.get_phone_number()).to(eq("5035551111"))
    end
  end

  describe("#get_email") do
    it("returns the company name from job list") do
      test_job = Job.new("Barf", "5035551111", "barf@gmail.com")
      expect(test_job.get_email()).to(eq("barf@gmail.com"))
    end
  end

  describe(".remove") do
    it("removes a user defined job off the resume in the list") do
      test_job = Job.new("Barf", "5035551111", "barf@gmail.com")
      test_job.save()
      test_job2 = Job.new("Fart", "5035552222", "fart@gmail.com")
      test_job2.save()
      Job.remove(test_job.get_company_name())
      expect(Job.all()).to(eq([test_job2]))
    end
  end
end
