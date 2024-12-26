project "enet"
    kind "StaticLib"
    language "C"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "include/**.h",
        "**.c"
    }

    includedirs
    {
        "include"
    }

    filter "system:windows"
        systemversion "latest"

        defines
        {
            "ENET_STATIC"
        }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
