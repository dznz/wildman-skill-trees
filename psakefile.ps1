Include ".\build_utils.ps1"

Properties {
  $DistDir = (Join-Path $PSScriptRoot "dist")
  $SrcRoot = (Join-Path $PSScriptRoot "src")
  $outFormat = "svg"
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
         -OutputFormat $outFormat
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
          -OutputFormat $outFormat
  }
}

Task CompileMace {
  $MaceRoot = (Join-Path $SrcRoot "mace")
  
  Puml -SrcFilePath (Join-Path $MaceRoot "mace_progression_ALL.puml") `
       -OutputDirPath $DistDir `
       -OutputFormat $outFormat
}

Task Clean {
  Remove-Item -Path (Join-Path $DistDir "*")
}