Include ".\build_utils.ps1"

Properties {
  $DistDir = (Join-Path $PSScriptRoot "dist")
  $SrcRoot = (Join-Path $PSScriptRoot "src")

  # By default, produce only SVG diagrams as output
  [string[]] $script:OutputFormats = ,"svg"

  # PlantUML/Dot diagrams to compile
  $DiagramFiles = @{
    hc = (
      "hc_2h_progression_1.puml",
      "hc_2h_progression_2.puml",
      "hc_2h_progression_ALL.puml",
      "hc_2h_progression_ALT.puml",
      "hc_sa_progression.puml"
    )
    kb = (
      "kb_progression_1.puml",
      "kb_progression_2_tgu.puml",
      "kb_progression_3.puml",
      "kb_progression_4.puml",
      "kb_progression_ALL.puml"
    )
    mace = (
      "mace_progression_ALL.puml",
      "mace_progression_sa.puml",
      "mace_warrior_subsequence.puml"
    )
  }

  # Files copied directly to Dist
  $StaticFiles = @{
    hc = (
      "2hhc_bootstrap_program.xlsx",
      "hc_2h_progression.csv",
      "hc_sa_drills.csv")
    kb = (
      "kb_bootstrap_program.xlsx",
      "kb_progression.csv")
    mace = (
      "mace_progression.csv"
    )
  }
}

Task default -Depends Quick

Task Quick -Depends Compile `
  -Description "Build only SVG files for quick updates."

Task Full -Depends Clean, SetReleaseFormats, Compile, CopyStaticFiles `
  -Description "Prepare a full release of diagrams and static files"

# Releases include SVG & PNG formats for accessibility
Task SetReleaseFormats `
  -Description "Set to the supported image formats for releases."
{
  $script:OutputFormats = "svg", "png"
}

Task Compile -Depends CompileHeavyClub, `
                      CompileKettlebell, `
                      CompileMace
{}

Task CompileHeavyClub { Compile-PumlDiagram -ToolName "hc" }

Task CompileKettlebell { Compile-PumlDiagram -ToolName "kb" }

Task CompileMace { Compile-PumlDiagram -ToolName "mace" }

Task CopyStaticFiles -Depends CopyStaticHeavyClub, `
                              CopyStaticKettlebell, `
                              CopyStaticMace
{}

Task CopyStaticHeavyClub { Copy-StaticFiles -ToolName "hc" }

Task CopyStaticKettlebell { Copy-StaticFiles -ToolName "kb" }

Task CopyStaticMace { Copy-StaticFiles -ToolName "mace" }

Task Clean {
  Remove-Item -Path (Join-Path $DistDir "*")
}

function Compile-PumlDiagram {
  param (
    [string] $ToolName
  )
  $ToolRoot = (Join-Path $SrcRoot $ToolName)
  foreach ($SrcFile in $DiagramFiles[$ToolName]) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $ToolRoot $SrcFile) `
        -OutputDirPath $DistDir `
        -OutputFormatList $script:OutputFormats
  }
}

function Copy-StaticFiles {
  param (
    [string] $ToolName
  )
  $ToolRoot = (Join-Path $SrcRoot $ToolName)
  $FilesToCopy = $StaticFiles[$ToolName]
  foreach ($SrcFile in $FilesToCopy) {
    Copy-Item -Path (Join-Path $ToolRoot $SrcFile) `
      -Destination $DistDir
  }
}
