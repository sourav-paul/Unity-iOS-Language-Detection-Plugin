using System.Collections.Generic;
using System.Runtime.InteropServices;

public class IOSNative 
{
	[DllImport("__Internal")]
	private static extern string GetSysLang();

	public static string GetSystemLanguage()
	{
		string str = GetSysLang ();

		string finalLang = str.Remove (2,3);

		return finalLang;
	}
}
