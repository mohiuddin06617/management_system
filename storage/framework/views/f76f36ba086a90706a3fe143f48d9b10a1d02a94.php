<script type="text/javascript">
    //FUNCTION TO ASSIST WITH AUTO ADDRESS INPUT USING GOOGLE MAPS API3
    //<![CDATA[
    window.onload=function(){
        if(document.getElementById("location"))
        {
            var input = document.getElementById('location');
            var options; // = {componentRestrictions: {country: 'us'}};
            var autocomplete = new google.maps.places.Autocomplete(input, options);
        }
     }//]]>
</script><?php /**PATH /var/www/html/productive/resources/views/scripts/gmaps-address-lookup-api3.blade.php ENDPATH**/ ?>