Include ".\build_utils.ps1"

Properties {
  $DistDir = (Join-Path $PSScriptRoot "dist")
  $SrcRoot = (Join-Path $PSScriptRoot "src")
  [string[]] $OutputFormats = ,"svg"
}

Task default -Depends Full

Task Full -Depends Clean, Compile {
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
               "mace_sa_progression.puml",
               "mace_warrior_subsequence.puml"
  foreach ($SrcFile in $PumlFiles) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $MaceRoot $SrcFile) `
        -OutputDirPath $DistDir `
        -OutputFormatList $OutputFormats
  }
}

Task Clean {
  Remove-Item -Path (Join-Path $DistDir "*")
}
