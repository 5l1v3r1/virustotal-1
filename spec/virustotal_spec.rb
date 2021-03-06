base = __FILE__
$:.unshift(File.join(File.dirname(base), '../lib'))

module VirusTotal
  describe "./bin/virustotal -h FD287794107630FA3116800E617466A9" do
    it "returns 39 results for FD287794107630FA3116800E617466A9" do
      cmd = IO.popen "./bin/virustotal -h FD287794107630FA3116800E617466A9"
      data = cmd.readlines
      cmd.close
      data.length.should == 38
 			sleep 7
    end
  end
  
  describe "./bin/virustotal -s 'http://www.google.com'" do
    it "returns 6 sites for 'http://www.google.com'" do
      cmd = IO.popen "./bin/virustotal -s \"http://www.google.com\""
      data = cmd.readlines
      cmd.close      
      data.length.should == 13
			sleep 7
    end
  end
end