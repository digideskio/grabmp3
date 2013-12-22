use LWP::Simple;

$base="http://db.oruwebsite.com/hindi/Songs/Best%20Hits%20mp3%20Collection/A.R.Rahman_Greatest_Hits/";
while(chomp($line = <>)){
    @data = split(/2011 /,$line); 
    $breakit = @data[1]; #grab second half, after 2011        
    $breakit =~ s/^\s+|\s+$//g; #remove leading and trailing spaces
	$fname = $breakit;

    $breakit =~ s/\s/%20/g; #replace spaces with %20
    $url= $base . $breakit;
    
    my($fnum,$fnm) = split(/-/,$fname,2);
    $fnm =~s/^\s+|\s+$//g;
	print "Downloading  " . "$fnm" . "\n";
	$filename = "./$fnm";
	getstore($url,$filename);

}


