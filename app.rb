require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/resume")

get ("/") do
  @jobs = Job.all()
  erb(:index)
end

post ("/add") do
  @company_name = params.fetch("company_name")
  @phone_number = params.fetch("phone_number")
  @email = params.fetch("email")

  test_job = Job.new(@company_name, @phone_number, @email)
  test_job.save()
  redirect("/")
end

post ("/clear") do
  Job.clear()

  redirect("/")
end

post ("/delete") do
  @to_delete = params.fetch("to_delete")
  Job.remove(@to_delete)

  redirect("/")
end
