require_relative "../lib/job"

describe Job, "#duration" do
  it "returns the total number of seconds the job will take to complete" do
    job_1 = Job.new(:wax)
    job_2 = Job.new(:edge, :wax)
    job_3 = Job.new(:performance)
    job_4 = Job.new(:basic, :ptex)

    expect(job_1.duration).to eq(900)
    expect(job_2.duration).to eq(2400)
    expect(job_3.duration).to eq(4320)
    # expect(job_4.duration).to eq(3600)
  end
end

describe Job, "#price" do
  xit "returns the total price of the job" do
    pending
  end
end


# job = Job.new(:wax)          #=> single service
# job.duration                 #=> 900 (seconds)
# job.price                    #=> 20.00 (dollars)
#
# job = Job.new(:edge, :wax)   #=> multiple services
# job.duration                 #=> 2400 (seconds)
# job.price                    #=> 53.33 (dollars)
#
# job = Job.new(:performance)  #=> a package
# job.duration                 #=> 4320 (seconds)
# job.price                    #=> 96.00 (dollars)
#
# job = Job.new(:basic, :ptex) #=> package + additional service
# job.duration                 #=> 3600 (seconds)
# job.price                    #=> 80.00 (dollars)
