$here = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path))
$here = Join-Path (Join-Path $here 'Functions') 'Public'
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Search-Object" {
    
    $testObject = [PSCustomObject]@{
        root = @{
            number1 = 'one'
            number2 = 'two'
            number3 = 'three'
            child1 = @{
                Colour1 = 'red'
                Colour2 = 'blue'
                Child2 = @{
                    Planet1 = 'Mercury'
                    Planet2 = 'Venus'
                    Planet3 = 'Earth' 
                }
                Colour3 = 'Teal'
            }
            Number4 = 'four'
        }
    }
    
    It "Takes Object via Paramter" {
        Search-Object -inputObject $testObject -Find 'one' | Should -BeNullOrEmpty
    }
}