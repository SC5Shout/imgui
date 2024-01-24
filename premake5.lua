project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "on"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

    files { 
        "*.h", 
        "*.c", 
        "*.hpp", 
        "*.cpp",
        "backends/**.h",
        "backends/**.cpp",
        "misc/cpp/**.h",
        "misc/cpp/**.cpp"
    }

    includedirs {       
        "/",
        "/misc/cpp",
        "/backends",
    }

    filter "configurations:Debug"
		defines "IMGUI_DEBUG"
		symbols "On"

    filter "configurations:Release"
        defines "IMGUI_RELEASE"
        optimize "On"