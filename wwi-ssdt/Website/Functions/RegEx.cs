using Microsoft.SqlServer.Server;
using System.Text.RegularExpressions;

/// <summary>
/// https://blogs.msdn.microsoft.com/sqlclr/2005/06/29/working-with-regular-expressions/
/// </summary>
public partial class RegEx
{
    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static bool Match(string source, string pattern)
    {
        Regex r1 = new Regex(pattern);
        return r1.Match(source).Success;
    }

    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static bool CompiledMatch(string source, string pattern)
    {
        return Regex.Match(source, pattern, RegexOptions.Compiled).Success;
    }

    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static string Substring(string source, string pattern)
    {
        Regex r1 = new Regex(pattern);
        return r1.Match(source).Value;
    }

    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static string CompiledSubstring(string source, string pattern)
    {
        return Regex.Match(source, pattern, RegexOptions.Compiled).Value;
    }

    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static string Replace(string source, string pattern, string value)
    {
        return Regex.Replace(source, pattern, value);
    }

    [SqlFunction(IsDeterministic = true, IsPrecise = true)]
    public static string CompiledReplace(string source, string pattern, string value)
    {
        return Regex.Replace(source, pattern, value, RegexOptions.Compiled);
    }
};