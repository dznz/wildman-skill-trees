function Puml {
    param (
      # Path to the source PlantUML file
      [Parameter(Mandatory=$true,
                 Position=0,
                 ValueFromPipeline=$true,
                 ValueFromPipelineByPropertyName=$true,
                 HelpMessage="Path to the source PlantUML file")]
      [Alias("PSPath")]
      [ValidateNotNullOrEmpty()]
      [string[]]
      $SrcFilePath,
  
      # Path to the output directory
      [Parameter(Mandatory=$true,
                 Position=1,
                 ParameterSetName="ParameterSetName",
                 ValueFromPipeline=$true,
                 ValueFromPipelineByPropertyName=$true,
                 HelpMessage="Path to one or more locations.")]
      [ValidateNotNullOrEmpty()]
      [string[]]
      $OutputDirPath,
  
      # Output file format
      [Parameter(Position=2,
      HelpMessage="One of svg, png")]
      [string[]]
      $OutputFormatList = @("svg")
    )
    foreach ($format in $OutputFormatList) {
        $cmd = "plantuml -t$format -o $OutputDirPath $SrcFilePath"
        Invoke-Expression $cmd
    }
}
