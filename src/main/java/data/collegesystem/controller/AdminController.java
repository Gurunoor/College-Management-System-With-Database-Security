package data.collegesystem.controller;

import org.springframework.ui.Model;
import java.sql.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.sun.corba.se.impl.oa.poa.ActiveObjectMap.Key;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64DecoderStream;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64EncoderStream;
import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

@Controller
public class AdminController {
	private static Cipher ecipher;
	private static Cipher dcipher;
	static SecretKeySpec key;
	private static SecretKey key1;
	static BASE64Encoder encoder = new BASE64Encoder();
	static BASE64Decoder decoder = new BASE64Decoder();

	@RequestMapping("/adminlogin")
	public String adminlogin() {
		return "adminlogin";
	}
	
	@RequestMapping("/showreportbook")
	public String showreportbook() {
		return "showreportbook";
	}
	@RequestMapping("/newadminlogin")
	public String newadminlogin() {
		return "newadminlogin";
	}

	@RequestMapping("/adminlog")
	public String adminlog() {
		return "adminlog";
	}

	@RequestMapping("/report")
	public String report() {
		return "report";
	}
	@RequestMapping("/addstudentmarks")
	public String addstudentmarks() {
		return "addstudentmarks";
	}

	@RequestMapping("/insertmarks")
	public String insertmarks(@RequestParam("id") String id, @RequestParam("marksobtain") String marksobtain,
			@RequestParam("status") String s, @RequestParam("per") String per,
			@RequestParam("totalmark") String totalmark, @RequestParam("description") String description, Model m) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from student where studentid ="+id);
			int i = 0;
			while (res.next()) {
				i++;
			}
			if (i > 0) {

				String sql = "insert into marks values(" + id + "," + marksobtain + "," + totalmark + ",'" + per + "','"
						+ s + "','" + description + "')";
				st.executeUpdate(sql);
				return "teacherlog";
			} else {
				String msg = "Sorry . No Student Id Is Found";
				m.addAttribute("msg", msg);
				return "addstudentmarks";
			}
		} catch (Exception obj) {
			return "addstudentmarks";
		}
	}
	
	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	@RequestMapping("/addteacher")
	public String addteacher() {
		return "addteacher";
	}
	@RequestMapping("/seemarks")
	public String seemarks() {
		return "seemarks";
	}

	@RequestMapping("/addstudent")
	public String addstudent() {
		return "addstudent";
	}

	@RequestMapping("/addcircular")
	public String addcircular() {
		return "addcircular";
	}

	@RequestMapping("/addbook")
	public String addbook() {
		return "addbook";
	}

	@RequestMapping("/insertstudent")
	public String insertstudent(@RequestParam("studentid") String studentid,
			@RequestParam("studentname") String studentname, @RequestParam("scourse") String scourse,
			@RequestParam("studentaddress") String studentaddress, @RequestParam("studentphone") String studentphone,
			@RequestParam("studentcity") String studentcity, @RequestParam("studentstate") String studentstate,
			@RequestParam("studentcentercode") String studentcentercode,
			@RequestParam("studentemail") String studentemail, Model m) {
		String s = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			String sql = "insert into student values(" + studentid + ",'" + studentname + "','" + studentaddress + "',"
					+ studentphone + ",'" + scourse + "','" + studentcity + "','" + studentstate + "','"
					+ studentcentercode + "','" + studentemail + "')";
			st.executeUpdate(sql);
			s = "showstudent";

		} catch (Exception obj) {
			String msg = "Sorry . Cant upload data right now plz try again later";
			m.addAttribute("message", msg);
			s = "adminerror";
		}
		return s;
	}

	@RequestMapping("/showstudent")
	public String showstudent() {
		return "showstudent";
	}

	@RequestMapping("/insertcircular")
	public String insertcircular(@RequestParam("circularid") String circularid,
			@RequestParam("dateofcircular") String dateofcircular, @RequestParam("comment") String comment, Model m) {
		String s = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			String sql = "insert into circular values(" + circularid + ",'" + dateofcircular + "','" + comment + "')";
			st.executeUpdate(sql);
			s = "showcircular";

		} catch (Exception obj) {
			String msg = "Sorry . Cant upload data right now plz try again later";
			m.addAttribute("message", msg);
			s = "adminerror";
		}
		return s;
	}

	@RequestMapping("/showcircular")
	public String showcircular() {
		return "showcircular";
	}

	@RequestMapping("/insertteacher")
	public String insertteacher(@RequestParam("teacherid") String teacherid,
			@RequestParam("teachername") String teachername, @RequestParam("tdesignation") String tdesignation,
			@RequestParam("tdepartment") String tdepartment, @RequestParam("dateofjoining") String dateofjoining,
			@RequestParam("teachernumber") String teachernumber, @RequestParam("age") String age,
			@RequestParam("salary") String salary, Model m) {
		String s = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			String sql = "insert into teacher values(" + teacherid + ",'" + teachername + "','" + tdesignation + "','"
					+ tdepartment + "','" + dateofjoining + "','" + teachernumber + "'," + salary + "," + age + ")";
			st.executeUpdate(sql);
			s = "showteacher";

		} catch (Exception obj) {
			String msg = "Sorry . Cant upload data right now plz try again later";
			m.addAttribute("message", msg);
			s = "adminerror";
		}
		return s;
	}

	@RequestMapping("/showteacher")
	public String showteacher() {
		return "showteacher";
	}

	@RequestMapping("/admincheck")
	public String admincheck(@RequestParam("adminid") String adminid,
			@RequestParam("adminpassword") String adminpassword, @RequestParam("emailid") String emailid, Model m) {
		String s = "", password = "", name = "";
		String key2 = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery(
					"select * from adminlogin where adminid ='" + adminid + "'and adminemail='" + emailid + "'");
			int i = 0;
			while (res.next()) {
				i++;
				name = res.getString(2);
				password = res.getString(3);
				key2 = res.getString(5);

			}
			if (i > 0) {
				dcipher = Cipher.getInstance("DES");
				byte[] encodedKey = decoder.decodeBuffer(key2);
				key = new SecretKeySpec(encodedKey, 0, encodedKey.length, "DES");
				dcipher.init(Cipher.DECRYPT_MODE, key);
				String decrypted = decrypt(password);
				//System.out.println(key);
				//System.out.println(adminpassword);
				//System.out.println(decrypted);
				if (decrypted.equals(adminpassword)) {
					m.addAttribute("name", name);
					s = "adminlog";
				} else {
					String msg = "Sorry . You entered an incorrect password";
					m.addAttribute("message", msg);
					s = "adminlogin";
				}

			} else if (i == 0) {

				String msg = "Sorry . You entered an emailid or id";
				m.addAttribute("message", msg);
				s = "adminlogin";
			}

		} catch (Exception obj) {
			s = obj.getMessage();
		}
		return s;
	}

	@RequestMapping("/admininsert")
	public String admininsert(@RequestParam("adminid") String adminid, @RequestParam("adminname") String adminname,
			@RequestParam("adminpassword") String adminpassword, @RequestParam("emailid") String emailid, Model m) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/college", "root", "1234");
			Statement st = con.createStatement();
			key1 = KeyGenerator.getInstance("DES").generateKey();
			ecipher = Cipher.getInstance("DES");
			ecipher.init(Cipher.ENCRYPT_MODE, key1);
			String keyString = encoder.encode(key1.getEncoded());
			String encrypted = encrypt(adminpassword);
			//System.out.println(encrypted);
			String sql = "insert into adminlogin values(" + adminid + ",'" + adminname + "','" + encrypted + "','"
					+ emailid + "','" + keyString + "')";
			st.executeUpdate(sql);
			return "adminlogin";
		} catch (Exception obj) {
			System.out.print(obj.getMessage());
			return "newadminlogin";
		}
	}

	public static String encrypt(String str) {
		try {
			// encode the string into a sequence of bytes using the named charset
			// storing the result into a new byte array.
			byte[] utf8 = str.getBytes("UTF8");
			byte[] enc = ecipher.doFinal(utf8);
// encode to base64
			enc = BASE64EncoderStream.encode(enc);
			return new String(enc);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public static String decrypt(String str) {
		try {
			// decode with base64 to get bytes
			byte[] dec = BASE64DecoderStream.decode(str.getBytes());
			byte[] utf8 = dcipher.doFinal(dec);
// create new string based on the specified charset
			return new String(utf8, "UTF8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
