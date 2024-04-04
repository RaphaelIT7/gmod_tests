return {
    groupName = "breaking test",
    cases = {
        {
            name = "this one breaks lol",
            async = true,
            func = function()
                timer.Simple(2, function()
                    fail( "inner failure" )
                end)
            end
        }
    }
}
