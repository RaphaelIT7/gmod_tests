return {
    groupName = "Vector:Rotate",

    cases = {
        {
            name = "Exists on the Vector meta table",
            func = function()
                local meta = FindMetaTable( "Vector" )
                expect( meta.Rotate ).to.beA( "function" )
            end
        },

        {
            name = "Returns the right value",
            func = function()
                local a = Vector( 1, 2, 3 )
                local b = Angle( 90, 0, 0 )
                local c = a:Rotate( b )

                expect( c[1] ).to.equal( 3 )
                expect( c[2] ).to.equal( 2 )
                expect( c[3] ).to.equal( -1.0000001192092895507812 )
            end
        },
    }
}
