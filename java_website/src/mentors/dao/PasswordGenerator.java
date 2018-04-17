package mentors.dao;

import java.security.*;
import java.math.*;

public final class PasswordGenerator
{
	private SecureRandom random=new SecureRandom();
	public String nextSessionId()
	{
		return new BigInteger(50,random).toString(32);
	}
}
