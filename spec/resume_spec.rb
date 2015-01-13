require('rspec')
require('resume')

describe(Job) do
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
end
