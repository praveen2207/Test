<h2>DirectoryList Example</h2> 
<h3>Enter a directory for Listing.</h3> 
<cfform action = "" method="post" preservedata="true" > 
<label for="listDirectory">Directory Path: </label><cfinput type = "text" id="listDirectory" name = "listDirectory"> 
  
<label for="recurse">Recurse: </label><cfinput id="recurse" type="checkbox" value="recurse" name="recurse"> 
  
<label for="listInfo">List Info: </label> 
<cfselect name="listInfo" id="listInfo"> 
<option value="name">name</option> 
<option value="path">path</option> 
<option value="query">query</option> 
</cfselect> 
  
<label for="filter">Filter: </label><cfinput id="filter" type="text" value="" name="filter">   
<input type = "submit" value="submit" name = "submit"> 
</cfform> 
 
<cfif IsDefined("FORM.listDirectory")> 
<cfif FORM.listDirectory is not ""> 
<cfset listDirectory = FORM.listDirectory> 
<cfset recurse = false> 
<cfif isDefined("FORM.recurse")> 
<cfset recurse = true> 
</cfif> 
<cfset listInfo = FORM.listInfo> 
<cfset filter = FORM.filter> 
<cftry> 
<cfset res= DirectoryList(listDirectory,recurse,listInfo,filter)> 
<cfoutput><b>Content of Directory #listDirectory#: </b></cfoutput> 
<cfdump var="#res#"> 
<cfcatch> 
<b>Error Message:</b><cfoutput>#cfcatch.message#</cfoutput> 
<b>Error Detail:</b><cfoutput>#cfcatch.Detail#</cfoutput> 
</cfcatch> 
</cftry> 
</cfif> 
</cfif>