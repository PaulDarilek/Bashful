using System;

namespace Bashful
{
    internal class Program
    {
        internal static void Main(string[] args)
        {
            Console.WriteLine(
                $"Microsoft .NET {Environment.Version} running on {Environment.MachineName} ({Environment.OSVersion}) "
                );
        }
    }
}
