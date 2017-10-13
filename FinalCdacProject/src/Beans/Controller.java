package Beans;

import java.beans.Beans;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.xml.BeansDtdResolver;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;





@org.springframework.stereotype.Controller
public class Controller 
{
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;
	
	@RequestMapping(value="/h")
	public String a4(HttpServletRequest request,@RequestParam String user)
	{

		if(request.getSession().getAttribute(user)==null)
			{
				return "main";
			}
		else
		return "index";
	}
	@RequestMapping(value="/")
	public ModelAndView  welcome()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("main");
		return view;
	}
	@RequestMapping(value="/contact")
	public ModelAndView contact()
	{
		ModelAndView view = new ModelAndView();
		view.setViewName("contact");
		return view;
	}
	
	@RequestMapping(value="/abt")
	public String a5()
	{
		return "About1";
	}
	@RequestMapping(value="/ser")
	public String a6(HttpServletRequest request)
	{
		
		return "Services";
	}
	
	@RequestMapping(value="/l")
	public String a1()
	{
		return "login";
	}
	
	@RequestMapping(value="/in")
	public String a2(@RequestParam String user,@RequestParam String pass,ModelMap m,HttpServletRequest request,HttpSession session) throws SQLException
	{
		//jdbcTemplate.update("insert into login values(?,?)",user,pass);
		String dbuser=null;
		String dbpass=null;
		// httpSession=request.setAttribute(user, dbuser);
		//ArrayList<Register> reg = new ArrayList<Register>();
		
		Connection con = dataSource.getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from register where name='"+user+"'");
		while(rs.next())
		{
			dbuser=rs.getString(1);
			 dbpass=rs.getString(2);
		
		}
		if(user.equals(dbuser) && pass.equals(dbpass))
		{
			session.setAttribute("username", dbuser);
			
			ArrayList<demo1>listp=new ArrayList<demo1>();
			session.setAttribute("plist", listp);
			return "index";
		}
		else
		{
			m.put("msg", "Username or Password Invalid...!!!");
			return "login";
		}
			
	}
	
	@RequestMapping(value="/reg")
	public String a3()
	{
		return "register";
	}
	
	@RequestMapping(value="/r1")
	public String a4(@RequestParam String name,@RequestParam String psw,@RequestParam String add,@RequestParam String email,@RequestParam long mob,@RequestParam String model,@RequestParam String vno)
	{
		jdbcTemplate.update("insert into register values(?,?,?,?,?,?,?)",name,psw,add,email,mob,model,vno);
		return "login";
	}
	@RequestMapping(value="/sh")
	public String p3(@RequestParam String name,@RequestParam String psw,@RequestParam String cost,ModelMap m)
	{
		List<Register> reg=jdbcTemplate.query("select * from register ", new Mymapper());
		m.put("reg", reg);
		return "show";
	}
	@RequestMapping(value="/buy")
	public String b1()
	{
		return "buy";
	}
	@RequestMapping(value="/pro")
	public String p1()
	{
		return "product";
	}
	@RequestMapping(value="/serv")
	public String s1()
	{
		return "serv";
	}
	@RequestMapping(value="/p")
	public String b2(@RequestParam String id,HttpSession session,HttpServletRequest request) throws Exception
	{
		int i=Integer.parseInt(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sp","root","root");
		Statement st=con.createStatement();
		demo1 d= new demo1();
		ResultSet rs = st.executeQuery("select * from routine where id='"+i+"'");
		/*ArrayList<demo> d11= (ArrayList<demo>) session.getAttribute("plist");*/
		/*ArrayList<demo> d11=(ArrayList<demo>)request.getSession().se("plist");*/
		ArrayList<demo1> d11= (ArrayList<demo1>) session.getAttribute("plist");
		while(rs.next())
		{
			d.setId(rs.getInt(1));
			d.setService(rs.getString(2));
			d.setDescription(rs.getString(3));
			d.setPrice(rs.getDouble(4));
			
			d11.add(d);
			session.setAttribute("listp", d11);
	
		}
	
		return "purchase";
	}
	/*@RequestMapping(value="/p")
	public String b3(@RequestParam String id,HttpSession session) throws Exception
	{
		int i=Integer.parseInt(id);
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sp","root","root");
		Statement st=con.createStatement();
		demo d= new demo();
		ResultSet rs = st.executeQuery("select * from other where id='"+i+"'");
		ArrayList<demo> d11= (ArrayList<demo>) session.getAttribute("plist");
		while(rs.next())
		{
			d.setId(rs.getInt(1));
			d.setService(rs.getString(2));
			d.setDescription(rs.getString(3));
			d.setPrice(rs.getDouble(4));
			
			d11.add(d);
			session.setAttribute("listp", d11);
	
		}
	
		return "purchase";
	}*/
	@RequestMapping(value="/conf")
	public String c1()
	{
		return "confirm";
	}
	
	@RequestMapping(value="/admin")
	public String a2()
	{
		return "admin";
	}
	
	@RequestMapping(value="/adin")
	public String a1(@RequestParam Integer id,@RequestParam String ser,@RequestParam String descr,@RequestParam Double price)
	{
		//jdbcTemplate.update("insert into routine values(?,?,?,?,?,?)",id,ser,descr,price);
		jdbcTemplate.update("insert into routine values(?,?,?,?)",id,ser,descr,price);
		return "ad";
	}
	
	@RequestMapping(value="/book")
	public String b2()
	{
		return "book";
	}
	@RequestMapping(value="/f")
	public String f2()
	{
		return "forgot";
	}
}
