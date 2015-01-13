class Job

  define_method(:initialize) do |company_name, phone_number, email|
    @company_name = company_name
    @phone_number = phone_number
    @email = email
  end

  define_singleton_method(:all) do
    []  
  end
end
