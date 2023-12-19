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
               "hc_2h_progression_ALT.puml"
  foreach ($SrcFile in $PumlFiles) {
    Write-Host "Rendering $SrcFile"
    Puml -SrcFilePath (Join-Path $HCRoot $SrcFile) `
         -OutputDirPath $DistDir `
         -OutputFormat $outFormat
  }
  
  dot -T $outFormat (Join-Path $HCRoot "hc_sa_progression.gv") -o (Join-Path $DistDir "hc_sa_progression.$outFormat")
}

Task CompileKettlebell {
  $KBRoot = (Join-Path $SrcRoot "kb")
  dot -T $outFormat (Join-Path $KBRoot "kb_progression_1.gv") -o (Join-Path $DistDir "kb_progression_1.$outFormat")
  dot -T $outFormat (Join-Path $KBRoot "kb_progression_2_tgu.gv") -o (Join-Path $DistDir "kb_progression_2_tgu.$outFormat")
  dot -T $outFormat (Join-Path $KBRoot "kb_progression_3.gv") -o (Join-Path $DistDir "kb_progression_3.$outFormat")
  dot -T $outFormat (Join-Path $KBRoot "kb_progression_4.gv") -o (Join-Path $DistDir "kb_progression_4.$outFormat")
  
  Puml -SrcFilePath (Join-Path $KBRoot "kb_progression_ALL.puml") `
       -OutputDirPath $DistDir `
       -OutputFormat $outFormat
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