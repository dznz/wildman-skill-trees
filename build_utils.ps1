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
      [string]
      $OutputFormat = "svg"
    )
  
    $cmd = "plantuml -t$OutputFormat -o $OutputDirPath $SrcFilePath"
    Invoke-Expression $cmd
}