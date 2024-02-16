Include ".\build_utils.ps1"

Properties {
  $DistDir = (Join-Path $PSScriptRoot "dist")
  $SrcRoot = (Join-Path $PSScriptRoot "src")
  [string[]] $OutputFormats = ,"svg"

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

Task default -Depends Full

Task Full -Depends Clean, Compile, CopyStaticFiles {
}

Task Compile -Depends CompileHeavyClub, CompileKettlebell, CompileMace {
}

Task CompileHeavyClub {
  $HCRoot = (Join-Path $SrcRoot "hc")
  
  $PumlFiles = "hc_2h_progression_1.puml",
               "hc_2h_progression_2.puml",
               "hc_2h_progression_ALL.puml",
               "hc_2h_progression_ALT.puml",
               "hc_sa_progression.puml"
  foreach ($SrcFile in $PumlFiles) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $HCRoot $SrcFile) `
         -OutputDirPath $DistDir `
         -OutputFormatList $OutputFormats
  }
}

Task CompileKettlebell {
  $KBRoot = (Join-Path $SrcRoot "kb")
  $PumlFiles = "kb_progression_1.puml",
               "kb_progression_2_tgu.puml",
               "kb_progression_3.puml",
               "kb_progression_4.puml",
               "kb_progression_ALL.puml"
  foreach ($SrcFile in $PumlFiles) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $KBRoot $SrcFile) `
          -OutputDirPath $DistDir `
          -OutputFormatList $OutputFormats
  }
}

Task CompileMace {
  $MaceRoot = (Join-Path $SrcRoot "mace")
  $PumlFiles = "mace_progression_ALL.puml",
               "mace_progression_sa.puml",
               "mace_warrior_subsequence.puml"
  foreach ($SrcFile in $PumlFiles) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $MaceRoot $SrcFile) `
        -OutputDirPath $DistDir `
        -OutputFormatList $OutputFormats
  }
}

Task CopyStaticFiles -Depends CopyStaticHeavyClub, `
                              CopyStaticKettlebell, `
                              CopyStaticMace
{}

Task CopyStaticHeavyClub { Copy-Static -ToolName "hc" }

Task CopyStaticKettlebell { Copy-Static -ToolName "kb" }

Task CopyStaticMace { Copy-Static -ToolName "mace" }

function Copy-Static {
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

Task Clean {
  Remove-Item -Path (Join-Path $DistDir "*")
}
