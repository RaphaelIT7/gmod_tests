jit.off()
return {
    groupName = "Global:Test",
    cases = {
        {
            name = "Test",
            func = function()
                string.gsub( "blah", "blah", function() return error( "lol" ) end )
            end
        },
    }
}
