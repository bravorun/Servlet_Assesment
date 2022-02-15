import com.ymsli.model.persistance.user.User;
import com.ymsli.model.persistance.user.UserDaoImpl;

public class Mian {
	public static void main(String args[]) {
		UserDaoImpl user=new UserDaoImpl();
		User usr=new User("Ranjan","abc");
		user.addUser(usr);
		
	}

}
