#Author: Mrinal Dhar
# A small script that organizes files into correct directories 
# according to their file fomrat. 


dir=$PWD

mkdir -p /Users/sankaul/Desktop/unified/screenshots
mv $dir/Screen* /Users/sankaul/Desktop/unified/screenshots/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/photos
mv $dir/*.{jpg,png,bmp,psd,gif,jpeg} /Users/sankaul/Desktop/unified/photos/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/music
mv $dir/*.{mp3,wav,aac} /Users/sankaul/Desktop/unified/music/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/archives
mv $dir/*.{tar,tar.gz,zip,gz} /Users/sankaul/Desktop/unified/archives/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/webpages
mv $dir/*.{html,htm,webarchive,php} /Users/sankaul/Desktop/unified/webpages/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/PDFs
mv $dir/*.pdf /Users/sankaul/Desktop/unified/PDFs/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/scripts
mv $dir/*.{py,sh,pl} /Users/sankaul/Desktop/unified/scripts/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/documents
mv $dir/*.{doc,docx} /Users/sankaul/Desktop/unified/documents/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/presentations
mv $dir/*.{ppt,pptx} /Users/sankaul/Desktop/unified/presentations/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/excel
mv $dir/*.{xls,xlsx} /Users/sankaul/Desktop/unified/excel/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/setups
mv $dir/*.dmg /Users/sankaul/Desktop/unified/setups/ &> error_organize_script.log

mkdir -p /Users/sankaul/Desktop/unified/dirs_and_others
mv $dir/* /Users/sankaul/Desktop/unified/dirs_and_others/ &> error_organize_script.log

echo "Organization completed successfully."
