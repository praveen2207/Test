<cfoutput>
    <cffile action = "upload" destination = "C:\ColdFusion11\cfusion\wwwroot\PicTest" nameconflict = "overwrite">
    <cfimage source = "#form.image#" action = "writeToBrowser">
    <br>
    <cfset sample = "Work_0,Work_1,Skills_0,Skills_1,WorkExperience_0,WorkExperience_1,Skills_2">
    <cfset skillSet = "">
    <cfloop list = "#sample#" index = "i">
        <cfif Find("Skills", i) gt 0>
            #ListAppend(skillSet, i)#
        </cfif>
    </cfloop>
    <cfdump var = "#skillSet#">
</cfoutput>