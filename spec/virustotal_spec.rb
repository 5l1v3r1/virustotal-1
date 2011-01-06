base = __FILE__
$:.unshift(File.join(File.dirname(base), '../lib'))

module VirusTotal
  describe "virustotal.rb -s FD287794107630FA3116800E617466A9" do
    it "returns 38 results for FD287794107630FA3116800E617466A9" do
      cmd = IO.popen "./virustotal.rb -s FD287794107630FA3116800E617466A9"
      data = cmd.readlines
      cmd.close
      data.length.should == 38
 			sleep 6
    end
  end
  
  describe "./virustotal.rb -w 'http://www.google.com'" do
    it "returns 6 sites for 'http://www.google.com'" do
      cmd = IO.popen "./virustotal.rb -w \"http://www.google.com\""
      data = cmd.readlines
      cmd.close      
      data.length.should == 6
			sleep 6
    end
  end
end