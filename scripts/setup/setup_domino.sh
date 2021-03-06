pip install http://static.dominoup.com/python-domino.tar.gz


 
check_if_line_exists()
{
    # grep wont care if one or both files dont exist.
    grep -qsFx "$LINE_TO_ADD" ~/.profile ~/.bash_profile
}
 
add_line_to_profile()
{
    profile=~/.profile
    [ -w "$profile" ] || profile=~/.bash_profile
    printf "%s\n" "$LINE_TO_ADD" >> "$profile"
}
 


LINE_TO_ADD='export DOMINO_API_HOST=http://domino.teslamotors.com:9000'
check_if_line_exists || add_line_to_profile


echo "Please your domino API Key: "
echo "http://domino.teslamotors.com:9000/account"
read apikey



LINE_TO_ADD="export DOMINO_USER_API_KEY='$apikey'"
check_if_line_exists || add_line_to_profile