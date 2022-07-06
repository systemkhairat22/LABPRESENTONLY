package memberDAO;


import java.sql.*;


import java.util.*;
import modalclass.*;
import connectionDB.*;


public class DaoMember {
	static Connection con = null;
	static PreparedStatement ps = null;
	static java.sql.Statement st = null;
	static ResultSet rs = null;
	private int memberid, mem_age;
	private String mem_name, mem_address, mem_email, mem_phonenum, mem_password, repname, repnum;
	private String mem_icnum;

    //GET member by id
    public static member getMemberById(int memberid) {
    	member m = new member();
    	try{
    		//call getConnection method
    		con = connectionmanager.getConnection();
    		
    		//create statement
    		ps=con.prepareStatement ("SELECT * FROM member WHERE memberid =?");
    		ps.setInt(1, memberid);
    	
    		
    		//execute query
			rs = ps.executeQuery();
			if(rs.next()) {
				m.setMemberid(rs.getInt("memberid"));
				m.setMem_icnum(rs.getString("mem_icnum"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_age(rs.getInt("mem_age"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_address(rs.getString("mem_address"));
				m.setMem_password(rs.getString("mem_password"));
				m.setMem_phonenum(rs.getString("mem_phonenum"));
				m.setRepname(rs.getString("repname"));
				m.setRepnum(rs.getString("repnum"));

			}
			
			//close connection
			con.close();
			
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return m;
    }
    
    //CREATE NEW MEMBER 
    public void addMember(member member) {
    	 mem_name = member.getMem_name();
    	 mem_icnum = member.getMem_icnum();
    	 mem_age = member.getMem_age();
    	 mem_address = member.getMem_address();
    	mem_email = member.getMem_email();
        mem_phonenum = member.getMem_phonenum();
    	mem_password = member.getMem_password();
    	 repname = member.getRepname();
    	 repnum = member.getRepnum();
    	
    	try
    	{
    	//call getConnection() method
    		con = connectionmanager.getConnection();
    		
    	//create statement
    		ps = con.prepareStatement("INSERT INTO member(mem_name,mem_icnum,mem_age,mem_address,mem_email,mem_phonenum,mem_password,repname,repnum) values(?,?,?,?,?,?,?,?,?)");
    		ps.setString(1, mem_name);
    		ps.setString(2,mem_icnum);
    		ps.setInt(3, mem_age);
    		ps.setString(4, mem_address);
    		ps.setString(5, mem_email);
    		ps.setString(6, mem_phonenum);
    		ps.setString(7, mem_password);
    		ps.setString(8, repname);
    		ps.setString(9, repnum);
    		
    		//execute query
    		ps.executeUpdate();
			System.out.println("Successfully inserted");
            
			//close connection
            con.close();
    	}
    	catch (Exception e) {
            e.printStackTrace();
        }
    }
   
  //get all member
  	public static List<member> getAllMember() {
  		List<member> member= new ArrayList<member>();
  		
  		try {
  			//call getConnection() method
  			con = connectionmanager.getConnection();
  			
  			//create statement
  			st = con.createStatement();
  			String sql = "SELECT * FROM  member ORDER BY memberid";
  			
  			//execute query
  			rs = st.executeQuery(sql);
  			
  			while(rs.next()) {		//process result
  				 member m = new member();
  				m.setMemberid(rs.getInt("memberid"));
				m.setMem_icnum(rs.getString("mem_icnum"));
				m.setMem_name(rs.getString("mem_name"));
				m.setMem_age(rs.getInt("mem_age"));
			    m.setMem_address(rs.getString("mem_address"));
			    m.setMem_phonenum(rs.getString("mem_phonenum"));
				m.setMem_email(rs.getString("mem_email"));
				m.setMem_password(rs.getString("mem_password"));
				m.setRepname(rs.getString("repname"));
				m.setRepnum(rs.getString("repnum"));
				
  				member.add(m);
  			}
  			
  			//close connection
  			con.close();
  			
  			
  		} catch(Exception e) {
  			e.printStackTrace();
  		}
  		
  		return member;
  	}
   
  	//delete member
  	
  	public void deletemember (int id) {
  		try {
  			//call getConnection method
  			con = connectionmanager.getConnection();
  			
  			//create statement
  			ps = con.prepareStatement("DELETE FROM member WHERE memberid=?");
  			ps.setInt(1, id);
  			
  			//execute query
  			ps.executeUpdate();
  			
  			//close connection
  			con.close();
  			
  		}catch (Exception e) {
  			e.printStackTrace();
  		}
  }
  	//update member
  	
  	public void updatemember (member member) {
  		memberid = member.getMemberid();
  		 mem_name = member.getMem_name();
    	 mem_icnum = member.getMem_icnum();
    	 mem_age = member.getMem_age();
    	 mem_address = member.getMem_address();
    	mem_email = member.getMem_email();
        mem_phonenum = member.getMem_phonenum();
    	mem_password = member.getMem_password();
    	 repname = member.getRepname();
    	 repnum = member.getRepnum();
    	 
    	 try {
    		 //call getConnection method
    		 con = connectionmanager.getConnection ();
    		 
    		 //create statement
    		 ps = con.prepareStatement("UPDATE member SET mem_name=?, mem_icnum=?, mem_age=?, mem_address=?, mem_email=?, mem_phonenum=?, mem_password=?, repname=?, repnum=? WHERE memberid=?");
    		ps.setString(1, mem_name);
     		ps.setString(2,mem_icnum);
     		ps.setInt(3, mem_age);
     		ps.setString(4, mem_address);
     		ps.setString(5, mem_email);
     		ps.setString(6, mem_phonenum);
     		ps.setString(7, mem_password);
     		ps.setString(8, repname);
     		ps.setString(9, repnum);
     		ps.setInt(10, memberid);
    		 
     		//execute query
     		ps.executeUpdate();
     		
     		System.out.println("Successfully updated");
     		
     		//close connection
     		con.close();
     		
    	 }catch (Exception e) {
    		 e.printStackTrace();
    	 }
  	}

}
