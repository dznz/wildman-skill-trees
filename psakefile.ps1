Properties {
  $DistDir = (Join-Path $PSScriptRoot "dist")
  $SrcRoot = (Join-Path $PSScriptRoot "src")
}

Task default -Depends Full

Task Full -Depends Clean, Compile {
}

Task Compile -Depends CompileHeavyClub, CompileKettlebell {
}

Task CompileHeavyClub {
  $HCRoot = (Join-Path $SrcRoot "hc")
  plantuml -tsvg -o $DistDir (Join-Path $HCRoot "hc_2h_progression_1.puml")
  plantuml -tsvg -o $DistDir (Join-Path $HCRoot "hc_2h_progression_2.puml")
  plantuml -tsvg -o $DistDir (Join-Path $HCRoot "hc_2h_progression_ALL.puml")
  plantuml -tsvg -o $DistDir (Join-Path $HCRoot "hc_2h_progression_ALT.puml")
  dot -Tsvg (Join-Path $SrcRoot "hc\hc_sa_progression.gv") -o (Join-Path $DistDir "hc_sa_progression.svg")
}

Task CompileKettlebell {
  $KBRoot = (Join-Path $SrcRoot "kb")
  dot -Tsvg (Join-Path $KBRoot "kb_progression_1.gv") -o (Join-Path $DistDir "kb_progression_1.svg")
  dot -Tsvg (Join-Path $KBRoot "kb_progression_2_tgu.gv") -o (Join-Path $DistDir "kb_progression_2_tgu.svg")
  dot -Tsvg (Join-Path $KBRoot "kb_progression_3.gv") -o (Join-Path $DistDir "kb_progression_3.svg")
  dot -Tsvg (Join-Path $KBRoot "kb_progression_4.gv") -o (Join-Path $DistDir "kb_progression_4.svg")
}

Task Clean {
   "Clean"
}