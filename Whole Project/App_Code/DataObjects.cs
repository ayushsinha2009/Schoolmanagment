using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Net.Mail;

/// <summary>
/// Developer Name:Ayush Sinha
/// Organization Name School Management System 
/// Date: 10,11,12,13,15,16,17,18,19,20,22,23,24,27.04.2019,07,08,09,10,11,13,14-05-2019,03-06-2019
/// Company :Alllmaa IT solutions.
/// </summary>
public class DataObjects
{
    public DataObjects()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    #region Select Total Staff Type Master
    public DataTable SelectTotalStaffTypeMaster()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select count(*)as'TotalST' from tblStaffTypeMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Total Staff
    public DataTable SelectTotalStaff()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select count(*)as'Total' from tblStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Total Teacher
    public DataTable SelectTotalTeacher()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select count(*)as'TotalTeacher' from tblteacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Total Student
    public DataTable SelectTotalStudent()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select count(*)as'TotalStudent' from tblStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Total Expense
    public DataTable SelectTotalExpense()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select sum(ExpnseInRs)as'TotalExpense' from tblScholDailyExpenses";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Admin Login
    public DataTable CheckAdminLogin(string Username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, Username);
            objDatabase.AddInParameter(objDBCommand, "@pwd", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check staff Login
    public DataTable CheckStaffLogin(string Username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckStaffLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, Username);
            objDatabase.AddInParameter(objDBCommand, "@pwd", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Teacher Login
    public DataTable CheckTeacherLogin(string Username, string Password)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_CheckTeacherLogin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, Username);
            objDatabase.AddInParameter(objDBCommand, "@pwd", DbType.String, Password);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Staff Type
    public int AddStaffType(string SMType, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaffTypeMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SMType", DbType.String, SMType);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Staff Type
    public int UpdateStaffType(int SMId,string SMType,int UserId,string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateStaffTypeMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SMId", DbType.Int32, SMId);
            objDatabase.AddInParameter(objDBCommand, "@SMType", DbType.String, SMType);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Staff Type
    public int DeleteStaffType(int SMId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteStaffTypeMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SMId", DbType.Int32, SMId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff Type Master
    public DataTable SelectStaffTypeMaster()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStaffTypeMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Staff Type Master Id Wise
    public DataTable SelectStaffTypeMasterIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_UpdateStaffTypeMasterIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Staff
    public int AddStaff(string Salutation, string StaffFirstName,string StaffMiddleName,string StaffLastName,string Gender,string dob,string StaffAddress,string StaffState, string StaffCity,string Pincode,
string StaffCountry,string StaffContactNo,string StaffMobileNo,string StaffAadharcardNo,string StaffPhoto,string StaffDescription,string TotalWorkinghrs,string StaffType,string empcode,string username,string pwd,
string Createdby, int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Salutation", DbType.String,Salutation);
            objDatabase.AddInParameter(objDBCommand, "@StaffFirstName", DbType.String,StaffFirstName);
            objDatabase.AddInParameter(objDBCommand, "@StaffMiddleName", DbType.String, StaffMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@StaffLastName", DbType.String, StaffLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);

            objDatabase.AddInParameter(objDBCommand, "@StaffAddress", DbType.String, StaffAddress);
            objDatabase.AddInParameter(objDBCommand, "@StaffState", DbType.String, StaffState);
            objDatabase.AddInParameter(objDBCommand, "@StaffCity", DbType.String, StaffCity);
            
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@StaffCountry", DbType.String, StaffCountry);
            objDatabase.AddInParameter(objDBCommand, "@StaffContactNo", DbType.String, StaffContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffMobileNo", DbType.String, StaffMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffAadharcardNo", DbType.String, StaffAadharcardNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffPhoto", DbType.String, StaffPhoto);
            objDatabase.AddInParameter(objDBCommand, "@StaffDescription", DbType.String, StaffDescription);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkinghrs", DbType.String, TotalWorkinghrs);
            objDatabase.AddInParameter(objDBCommand, "@StaffType", DbType.String, StaffType);
            objDatabase.AddInParameter(objDBCommand, "@employeecode", DbType.String, empcode);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, username);
            objDatabase.AddInParameter(objDBCommand, "@pwd", DbType.String, pwd);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Staff
    public int UpdateStaff(int staffid,string Salutation, string StaffFirstName, string StaffMiddleName, string StaffLastName, string Gender,string dob, string StaffAddress, string StaffState, string StaffCity,string Pincode,
string StaffCountry, string StaffContactNo, string StaffMobileNo, string StaffAadharcardNo, string StaffDescription, string TotalWorkinghrs, string StaffType,string empcode, string username, string pwd,
string Createdby, int UserId, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "prc_UpdateStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@staffid", DbType.Int32, staffid);
            objDatabase.AddInParameter(objDBCommand, "@Salutation", DbType.String, Salutation);
            objDatabase.AddInParameter(objDBCommand, "@StaffFirstName", DbType.String, StaffFirstName);
            objDatabase.AddInParameter(objDBCommand, "@StaffMiddleName", DbType.String, StaffMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@StaffLastName", DbType.String, StaffLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);
            objDatabase.AddInParameter(objDBCommand, "@StaffAddress", DbType.String, StaffAddress);
            objDatabase.AddInParameter(objDBCommand, "@StaffState", DbType.String, StaffState);
            objDatabase.AddInParameter(objDBCommand, "@StaffCity", DbType.String, StaffCity);
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@StaffCountry", DbType.String, StaffCountry);
            objDatabase.AddInParameter(objDBCommand, "@StaffContactNo", DbType.String, StaffContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffMobileNo", DbType.String, StaffMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffAadharcardNo", DbType.String, StaffAadharcardNo);
            objDatabase.AddInParameter(objDBCommand, "@StaffDescription", DbType.String, StaffDescription);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkinghrs", DbType.String, TotalWorkinghrs);
            objDatabase.AddInParameter(objDBCommand, "@StaffType", DbType.String, StaffType);
            objDatabase.AddInParameter(objDBCommand, "@employeecode", DbType.String, empcode);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, username);
            objDatabase.AddInParameter(objDBCommand, "@pwd", DbType.String, pwd);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Staff Joining
    public int UpdateStaffJoining(int Staffid,string Staffrole,string JoiningDate,string Status)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_UpdatestaffJoining";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Staffid", DbType.Int32, Staffid);
            objDatabase.AddInParameter(objDBCommand, "@Staffrole", DbType.String, Staffrole);
            objDatabase.AddInParameter(objDBCommand, "@JoiningDate", DbType.String, JoiningDate);
            objDatabase.AddInParameter(objDBCommand, "@Status", DbType.String, Status);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Staff Salary
    public int UpdateStaffSalary(int Staffid,int Basic,int TA,int DA,int HRA,int OtherDeductions,int ActualPay)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateStaffSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Staffid", DbType.Int32, Staffid);
            objDatabase.AddInParameter(objDBCommand, "@Basic", DbType.Int32, Basic);
            objDatabase.AddInParameter(objDBCommand, "@TA", DbType.Int32, TA);
            objDatabase.AddInParameter(objDBCommand, "@DA", DbType.Int32, DA);
            objDatabase.AddInParameter(objDBCommand, "@HRA", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@OtherDeductions", DbType.Int32, OtherDeductions);
            objDatabase.AddInParameter(objDBCommand, "@ActualPay", DbType.Int32, ActualPay);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Staff 
    public int DeleteStaff(int staffid)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@staffid", DbType.Int32, staffid);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff 
    public DataTable SelectStaff()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStaff";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Current Staff Id
    public DataTable GetCurrentStaffId()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select IDENT_CURRENT('tblStaff') as 'staffId'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Staff  Id Wise
    public DataTable SelectStaffIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStaffIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Staff joining
    public int StaffJoinig(int SMId,int Staffid,string Staffrole,string JoiningDate, string Status, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaffJoiningDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SMId", DbType.Int32, SMId);
            objDatabase.AddInParameter(objDBCommand, "@Staffid", DbType.Int32, Staffid);
            objDatabase.AddInParameter(objDBCommand, "@Staffrole", DbType.String, Staffrole);
            objDatabase.AddInParameter(objDBCommand, "@JoiningDate", DbType.String, JoiningDate);
            objDatabase.AddInParameter(objDBCommand, "@Status", DbType.String, Status);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff  Joining
    public DataTable SelectStaffJoining()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStaffJoiningDate";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Attendance
    public DataTable CheckAttendance(string Date, string Month, string Day,int staffid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStaffAttendance where Date='"+Date+"' And Month='"+Month+"' Day='"+Day+"' And Staffid="+staffid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check teacher Attendance
    public DataTable CheckteacherAttendance(string Date, string Month, string Day, int staffid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblteacherAttendance where Date='" + Date + "' And Month='" + Month + "' Day='" + Day + "' And Staffid=" + staffid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Add Staff Attendance
    public int AddStaffAttendance(int Staffid,string Date,string Month,string Day,string Timein,string Tmeout,string TotalWorkingHours, string StaffPresent_Absent,string Createdby ,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStaffAttendance";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Staffid", DbType.Int32, Staffid);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@Timein", DbType.String, Timein);
            objDatabase.AddInParameter(objDBCommand, "@Tmeout", DbType.String, Tmeout);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkingHours", DbType.String, TotalWorkingHours);
            objDatabase.AddInParameter(objDBCommand, "@StaffPresent_Absent", DbType.String, StaffPresent_Absent);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff  Attendance
    public DataTable SelectStaffAttendance()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.Salutation+a.StaffFirstName+' '+a.StaffMiddleName+' '+a.StaffLastName as 'FullName',b.* from tblStaffAttendance b inner join tblStaff a on a.Staffid=b.Staffid order by a.staffid desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Staff Salary
    public int StaffSalary(int Staffid,int Basic,int TA,int DA,int HRA,int OtherDeductions,int ActualPay,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Staffid", DbType.Int32, Staffid);
            objDatabase.AddInParameter(objDBCommand, "@Basic", DbType.Int32, Basic);
            objDatabase.AddInParameter(objDBCommand, "@TA", DbType.Int32, TA);
            objDatabase.AddInParameter(objDBCommand, "@DA", DbType.Int32, DA);
            objDatabase.AddInParameter(objDBCommand, "@HRA", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@OtherDeductions", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@ActualPay", DbType.Int32, ActualPay);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Staff  Salary
    public DataTable SelectStaffSalary()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.StaffFirstName+' '+a.StaffMiddleName+' '+a.StaffLastName as 'StaffName',b.* from tblStaffSalary b inner join tblStaff a on a.Staffid=b.Staffid order by SalaryId desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Generate Staff Salary
    public int GenerateStaffSalary(int staffid,string SalaryDate,string StaffMonth,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "procGenerateSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@staffid", DbType.Int32, staffid);
            objDatabase.AddInParameter(objDBCommand, "@SalaryDate", DbType.String, SalaryDate);
            objDatabase.AddInParameter(objDBCommand, "@StaffMonth", DbType.String, StaffMonth);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region check Staff Salary
    public DataTable CheckStaffSalary(int staffid,string date ,string month)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblGenerateStaffSalary where staffid="+staffid+" And SalaryDate='"+date+"' And StaffMonth='"+month+"'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Staff Generate Salary
    public DataTable SelectStaffGenerateSalary()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.StaffFirstName,b.* from tblGenerateStaffSalary b inner join tblStaff a on a.Staffid=b.Staffid order by b.SalaryId desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select teacher Generate Salary
    public DataTable SelectteacherGenerateSalary()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.teacherFirstName,b.* from tblGenerateteacherSalary b inner join tblteacher a on b.teacherid=a.teacherid order by b.SalaryId desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Teacher
    public int Addteacher(string Salutation,string teacherFirstName,string teacherMiddleName,string teacherLastName,string Gender,string dob,int SubjectId,string teacherAddress,string teacherState,string teacherCity,string Pincode,
        string teacherCountry,string teacherContactNo,string teacherMobileNo,string teacherAadharcardNo,string teacherPANNo,string teacherPhoto,string teacherDescription,string TotalWorkinghrs,string employeecode,
        string username,string Pwd,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Addteacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Salutation", DbType.String, Salutation);
            objDatabase.AddInParameter(objDBCommand, "@teacherFirstName", DbType.String, teacherFirstName);
            objDatabase.AddInParameter(objDBCommand, "@teacherMiddleName", DbType.String, teacherMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@teacherLastName", DbType.String, teacherLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);
            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@teacherAddress", DbType.String, teacherAddress);
            objDatabase.AddInParameter(objDBCommand, "@teacherState", DbType.String, teacherState);
            objDatabase.AddInParameter(objDBCommand, "@teacherCity", DbType.String, teacherCity);
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@teacherCountry", DbType.String, teacherCountry);
            objDatabase.AddInParameter(objDBCommand, "@teacherContactNo", DbType.String, teacherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherMobileNo", DbType.String, teacherMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherAadharcardNo", DbType.String, teacherAadharcardNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherPANNo", DbType.String, teacherPANNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherPhoto", DbType.String, teacherPhoto);
            objDatabase.AddInParameter(objDBCommand, "@teacherDescription", DbType.String, teacherDescription);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkinghrs", DbType.String, TotalWorkinghrs);
            objDatabase.AddInParameter(objDBCommand, "@employeecode", DbType.String, employeecode);
            objDatabase.AddInParameter(objDBCommand, "@username", DbType.String, username);
            objDatabase.AddInParameter(objDBCommand, "@Pwd", DbType.String, Pwd);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Teacher
    public int Updateteacher(int teacherid,string Salutation, string teacherFirstName, string teacherMiddleName, string teacherLastName,string Gender,string dob, int SubjectId, string teacherAddress, string teacherState, 
        string teacherCity,string Pincode,string teacherContactNo, string teacherMobileNo, string teacherAadharcardNo, string teacherPANNo,  string teacherDescription, string TotalWorkinghrs, string employeecode,
        string Createdby, int UserId, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Updateteacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Salutation", DbType.String, Salutation);
            objDatabase.AddInParameter(objDBCommand, "@teacherFirstName", DbType.String, teacherFirstName);
            objDatabase.AddInParameter(objDBCommand, "@teacherMiddleName", DbType.String, teacherMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@teacherLastName", DbType.String, teacherLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);
            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@teacherAddress", DbType.String, teacherAddress);
            objDatabase.AddInParameter(objDBCommand, "@teacherState", DbType.String, teacherState);
            objDatabase.AddInParameter(objDBCommand, "@teacherCity", DbType.String, teacherCity);
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@teacherContactNo", DbType.String, teacherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherMobileNo", DbType.String, teacherMobileNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherAadharcardNo", DbType.String, teacherAadharcardNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherPANNo", DbType.String, teacherPANNo);
            objDatabase.AddInParameter(objDBCommand, "@teacherDescription", DbType.String, teacherDescription);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkinghrs", DbType.String, TotalWorkinghrs);
            objDatabase.AddInParameter(objDBCommand, "@employeecode", DbType.String, employeecode);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update teacher Joining
    public int UpdateteacherJoining(int teacherid, string Staffrole, string JoiningDate, string Status)
    {
        int result = 0;
        try
        {

            string _Proc = "Proc_UpdateteacherJoining";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@teacherrole", DbType.String, Staffrole);
            objDatabase.AddInParameter(objDBCommand, "@JoiningDate", DbType.String, JoiningDate);
            objDatabase.AddInParameter(objDBCommand, "@Status", DbType.String, Status);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update teacher Salary
    public int Updateteachersalary(int teacherid, int Basic, int TA, int DA, int HRA, int OtherDeductions, int ActualPay)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateteacherSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Basic", DbType.Int32, Basic);
            objDatabase.AddInParameter(objDBCommand, "@TA", DbType.Int32, TA);
            objDatabase.AddInParameter(objDBCommand, "@DA", DbType.Int32, DA);
            objDatabase.AddInParameter(objDBCommand, "@HRA", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@OtherDeductions", DbType.Int32, OtherDeductions);
            objDatabase.AddInParameter(objDBCommand, "@ActualPay", DbType.Int32, ActualPay);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete teacher
    public int Deleteteacher(int teacherid)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Deleteteacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher
    public DataTable Selectteacher()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Selectteacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select teacher Id Wise
    public DataTable SelectteacherIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectteacherIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Current teacher Id
    public DataTable GetCurrentteacherId()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select IDENT_CURRENT('tblteacher') as 'teacherId'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Teacher joining
    public int teacherJoinig(int teacherid,string Teacherrole,int Subjectid,string JoiningDate,string Status,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddteacherJoiningDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Teacherrole", DbType.String, Teacherrole);
            objDatabase.AddInParameter(objDBCommand, "@Subjectid", DbType.Int32, Subjectid);
            objDatabase.AddInParameter(objDBCommand, "@JoiningDate", DbType.String, JoiningDate);
            objDatabase.AddInParameter(objDBCommand, "@Status", DbType.String, Status);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher  Joining
    public DataTable SelectteacherJoining()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectteacherJoiningDate";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  teacher Attendance
    public int teacherAttendance(int teacherid, string Date, string Month,string Day, string Timein, string Tmeout, string TotalWorkingHours, string teacherPresent_Absent, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddteacherAttendance";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@Timein", DbType.String, Timein);
            objDatabase.AddInParameter(objDBCommand, "@Tmeout", DbType.String, Tmeout);
            objDatabase.AddInParameter(objDBCommand, "@TotalWorkingHours", DbType.String, TotalWorkingHours);
            objDatabase.AddInParameter(objDBCommand, "@teacherPresent_Absent", DbType.String, teacherPresent_Absent);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher  Attendance
    public DataTable SelectteacherAttendance()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.Salutation+a.teacherFirstName+' '+a.teacherMiddleName+' '+a.teacherLastName as 'FullName',b.* from tblteacherAttendance b inner join tblteacher a on b.teacherid=a.teacherid order by a.teacherid desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Add teacher Performance
    public int teacherPerformance(int teacherid,string Date,string Month,string Level,string PerformanceDescription,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddteacherPerformance";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Level", DbType.String, Level);
            objDatabase.AddInParameter(objDBCommand, "@PerformanceDescription", DbType.String, PerformanceDescription);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher  Performance
    public DataTable SelectteacherPerformance()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.Salutation+a.teacherFirstName+a.teacherMiddleName+a.teacherLastName as 'FullName',b.* from tblTeacherPerformance b inner join tblteacher a on b.teacherid=a.teacherid order by a.teacherid desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Teacher Salary
    public int TeacherSalary(int teacherid, int Basic, int TA, int DA, int HRA, int OtherDeductions, int ActualPay, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddteacherSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Basic", DbType.Int32, Basic);
            objDatabase.AddInParameter(objDBCommand, "@TA", DbType.Int32, TA);
            objDatabase.AddInParameter(objDBCommand, "@DA", DbType.Int32, DA);
            objDatabase.AddInParameter(objDBCommand, "@HRA", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@OtherDeductions", DbType.Int32, HRA);
            objDatabase.AddInParameter(objDBCommand, "@ActualPay", DbType.Int32, ActualPay);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher  Salary
    public DataTable SelectteacherSalary()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.teacherFirstName+a.teacherMiddleName+a.teacherLastName As 'TeacherName',b.* from tblteacherSalary b inner join tblteacher a on b.teacherid=a.teacherid";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Generate teacher Salary
    public int GenerateteacherSalary(int teacherid, string SalaryDate, string StaffMonth, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "procGenerateSalary";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@SalaryDate", DbType.String, SalaryDate);
            objDatabase.AddInParameter(objDBCommand, "@StaffMonth", DbType.String, StaffMonth);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select teacher  G Salary
    public DataTable SelectteacherGSal()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.teacherFirstName,b.* from tblGenerateteacherSalary b inner join tblteacher a on b.teacherid=a.teacherid";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Subject Master
    public int AddSubject(string SubjectName, int TotalMarks, string SubjectType,string SubjectDescription,string Createdby,int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddSubjectMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            
            objDatabase.AddInParameter(objDBCommand, "@SubjectName", DbType.String, SubjectName);
            objDatabase.AddInParameter(objDBCommand, "@TotalMarks", DbType.Int32, TotalMarks);
            objDatabase.AddInParameter(objDBCommand, "@SubjectType", DbType.String, SubjectType);
            objDatabase.AddInParameter(objDBCommand, "@SubjectDescription", DbType.String, SubjectDescription);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Subject Master
    public int UpdateSubject(int SubjectId, string SubjectName,int TotalMarks, string SubjectType, string SubjectDescription, string Createdby, int UserId, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateSubjectMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@SubjectName", DbType.String, SubjectName);
            objDatabase.AddInParameter(objDBCommand, "@TotalMarks", DbType.Int32, TotalMarks);
            objDatabase.AddInParameter(objDBCommand, "@SubjectType", DbType.String, SubjectType);
            objDatabase.AddInParameter(objDBCommand, "@SubjectDescription", DbType.String, SubjectDescription);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Subject Master
    public int DeleteSubject(int SubjectId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteSubjectMaster";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Subject Master
    public DataTable SelectSubjectMaster()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Select Subject Master Id Wise
    public DataTable SelectSubjectMasterIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSubjectIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Select Sub Subject Master Id Wise
    public DataTable SelectSubSubjectMasterIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSubSubjectIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Select Sub Subject Master Id Wise 1
    public DataTable SelectSubSubjectMasterIdWise1(int subjectid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select SubId,SubSubjectName from tblSubSubjectMaster Where SubjectId="+subjectid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Class Master
    public int AddClass(string ClassName,string description,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddClass";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ClassName", DbType.String, ClassName);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, description);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Class Master
    public int UpdateClass(int ClassId,string ClassName, string description)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateClass";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@ClassName", DbType.String, ClassName);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, description);
            


            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Class Master
    public int DeleteClass(int ClassId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteClass";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Class
    public DataTable SelectClass()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectClass";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Class Id Wise
    public DataTable SelectClassIdWise(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectClassIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Class Id Wise Optional
    public DataTable SelectClassIdWiseOptional(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select c.ClassId,c.ClassName from tblClassMaster c inner join tblOptionalSubject al on c.ClassId=al.ClassId and al.teacherid="+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Sub Subject Id Wise
    public DataTable SelectSubSubjectIdWise(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select s.SubId,s.SubSubjectName from tblSubSubjectMaster s inner join tblAllotment A on s.SubId=A.SubId where a.teacherid="+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Sub Subject Id Wise
    public DataTable SelectSubSubjectIdWiseOptional(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select s.SubjectId,s.SubjectName from tblSubjectMaster s inner join tblOptionalSubject A on s.SubjectId=A.SubjectId where a.teacherid=" + teacherid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Class Id Wise
    public DataTable SelectClassIdWiseA()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select c.ClassId,c.ClassName from tblClassMaster c";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Section Master
    public int AddSection(string SectionName, string description, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddSection";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@SectionName", DbType.String, SectionName);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, description);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Section Master
    public int UpdateSection(int SectionId,string SectionName, string description)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateSection";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);


            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SectionName", DbType.String, SectionName);
            objDatabase.AddInParameter(objDBCommand, "@description", DbType.String, description);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Section
    public int DeleteSection(int SectionId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteSection";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Section
    public DataTable SelectSection()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSection";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Section Id Wise
    public DataTable SelectSectionIdWise(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSectionIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Section Id Wise Optional
    public DataTable SelectSectionIdWiseOptional(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select s.SectionId,s.SectionName from tblSectionMaster s inner join tblOptionalSubject al on s.SectionId=al.SectionId and al.teacherid=" + teacherid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Section Id Wise
    public DataTable SelectSectionIdWiseA()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select s.SectionId,s.SectionName from tblSectionMaster s";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Teacher Time Table
    public int AddTeacherTimeTable(string Date,string Day, int teacherid,string TPeriod,string TFrom,string Till,int SubsubjectId,int ClassId,int SectionId,string ISClassTeacher, string ClassDesc,
        string Createdby,int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddTimeTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@TPeriod", DbType.String, TPeriod);
            objDatabase.AddInParameter(objDBCommand, "@TFrom", DbType.String, TFrom);
            objDatabase.AddInParameter(objDBCommand, "@Till", DbType.String, Till);
            objDatabase.AddInParameter(objDBCommand, "@SubsubjectId", DbType.Int32, SubsubjectId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@ISClassTeacher", DbType.String, ISClassTeacher);
            objDatabase.AddInParameter(objDBCommand, "@ClassDesc", DbType.String, ClassDesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Teacher Time Table
    public int UpdateTeacherTimeTable(int TimeTableId, string Date,string Day, int teacherid, string TPeriod, string TFrom, string Till, int SubsubjectId, int ClassId, int SectionId, string ISClassTeacher, string ClassDesc,
        string Createdby, int UserId, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateTimeTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@TimeTableId", DbType.Int32, TimeTableId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@TPeriod", DbType.String, TPeriod);
            objDatabase.AddInParameter(objDBCommand, "@TFrom", DbType.String, TFrom);
            objDatabase.AddInParameter(objDBCommand, "@Till", DbType.String, Till);
            objDatabase.AddInParameter(objDBCommand, "@SubsubjectId", DbType.Int32, SubsubjectId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@ISClassTeacher", DbType.String, ISClassTeacher);
            objDatabase.AddInParameter(objDBCommand, "@ClassDesc", DbType.String, ClassDesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Teacher Time Table
    public int DeleteTeacherTimeTable(int TimeTableId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteTimeTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@TimeTableId", DbType.Int32, TimeTableId);
            
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Time Table
    public DataTable SelectTimeTable()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelestTimeTable";//"GetAllTimeTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Time Table Teacher Wise
    public DataTable SelectTimeTableTeacher(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectTeacherTimeTable";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Vehicle
    public int AddVehicle(string VehicleType, string VehicleNo, string DriverName, string ConductorName, string DriverAadharNo, string ConductorAadharNo, string VehicleDesc, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddVehicleDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@VehicleType", DbType.String, VehicleType);
            objDatabase.AddInParameter(objDBCommand, "@VehicleNo", DbType.String, VehicleNo);
            objDatabase.AddInParameter(objDBCommand, "@DriverName", DbType.String, DriverName);
            objDatabase.AddInParameter(objDBCommand, "@ConductorName", DbType.String, ConductorName);
            objDatabase.AddInParameter(objDBCommand, "@DriverAadharNo", DbType.String, DriverAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@ConductorAadharNo", DbType.String, ConductorAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@VehicleDesc", DbType.String, VehicleDesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Vehicle
    public int UpdateVehicle(int VehicleId, string VehicleType, string VehicleNo, string DriverName, string ConductorName, string DriverAadharNo, string ConductorAadharNo, string VehicleDesc, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateVehicle";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@VehicleId", DbType.String, VehicleId);
            objDatabase.AddInParameter(objDBCommand, "@VehicleType", DbType.String, VehicleType);
            objDatabase.AddInParameter(objDBCommand, "@VehicleNo", DbType.String, VehicleNo);
            objDatabase.AddInParameter(objDBCommand, "@DriverName", DbType.String, DriverName);
            objDatabase.AddInParameter(objDBCommand, "@ConductorName", DbType.String, ConductorName);
            objDatabase.AddInParameter(objDBCommand, "@DriverAadharNo", DbType.String, DriverAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@ConductorAadharNo", DbType.String, ConductorAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@VehicleDesc", DbType.String, VehicleDesc);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Vehicle
    public int DeleteVehicle(int VehicleId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteVehicle";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@VehicleId", DbType.Int32, VehicleId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Vehicle
    public DataTable SelectVehicle()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectVehicle";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Vehicle Id Wise
    public DataTable SelectVehicleIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectVehicleIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Vehicle No Id Wise
    public DataTable SelectVehicleNoIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectVehicleNoIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Vehicle No Id Wise
    public DataTable SelectVehicleNoIdWise1(string vehicleno)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectVehicleIdWiseNo";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@VehicleNo", DbType.String, vehicleno);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Route
    public int AddRoute(int VehicleId,string VehicleNo, string RouteFrom,string RouteTo,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddRouteMater";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@VehicleId", DbType.Int32, VehicleId);
            objDatabase.AddInParameter(objDBCommand, "@VehicleNo", DbType.String, VehicleNo);
            objDatabase.AddInParameter(objDBCommand, "@RouteFrom", DbType.String, RouteFrom);
            objDatabase.AddInParameter(objDBCommand, "@RouteTo", DbType.String, RouteTo);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Route
    public int UpdateRoute(int routeid,int VehicleId, string VehicleNo, string RouteFrom, string RouteTo, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateRoute";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@routeid", DbType.Int32, routeid);
            objDatabase.AddInParameter(objDBCommand, "@VehicleId", DbType.Int32, VehicleId);
            objDatabase.AddInParameter(objDBCommand, "@VehiclNo", DbType.String, VehicleNo);
            objDatabase.AddInParameter(objDBCommand, "@RouteFrom", DbType.String, RouteFrom);
            objDatabase.AddInParameter(objDBCommand, "@RouteTo", DbType.String, RouteTo);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Route
    public int Deleteroute(int routeid)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_Deleterouute";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@routeid", DbType.Int32, routeid);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select route
    public DataTable Selectroute()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Selectroute";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student
    public int AddStudent(string StudentFirstName,string StudentMiddleName,string StudentLastName,string Gender,string dob,string BG, string StudentEnrollmentNo,string StudentRollNo,string StudentAadharNo,
string StudentPhoto,string StudentCorrespondanceAddress,string StudentPermanentAddress,int StateId, int CityId,string Pincode, string HomeContactNo, string StudentContactNo,string StudentFatherName,
string StudentFatherContactNo,string StudentFatherOccupation,string StudentFatherDesignation,string StudentFatherIncome,
string StudentMotherName,string StudentMotherContactNo,string StudentMotherOccupation,
string StudentMotherDesignation,string StudentMotherIncome,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentFirstName", DbType.String, StudentFirstName);
            objDatabase.AddInParameter(objDBCommand, "@StudentMiddleName", DbType.String, StudentMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@StudentLastName", DbType.String, StudentLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);
            objDatabase.AddInParameter(objDBCommand, "@BloodGroup", DbType.String, BG);
            objDatabase.AddInParameter(objDBCommand, "@StudentEnrollmentNo", DbType.String, StudentEnrollmentNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentRollNo", DbType.String, StudentRollNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentAadharNo", DbType.String, StudentAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentPhoto", DbType.String, StudentPhoto);
            objDatabase.AddInParameter(objDBCommand, "@StudentCorrespondanceAddress", DbType.String, StudentCorrespondanceAddress);
            objDatabase.AddInParameter(objDBCommand, "@StudentPermanentAddress", DbType.String, StudentPermanentAddress);
            objDatabase.AddInParameter(objDBCommand, "@StateId", DbType.Int32, StateId);
            objDatabase.AddInParameter(objDBCommand, "@CityId", DbType.Int32, CityId);
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@HomeContactNo", DbType.String, HomeContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentContactNo", DbType.String, StudentContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherName", DbType.String, StudentFatherName);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherContactNo", DbType.String, StudentFatherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherOccupation", DbType.String, StudentFatherOccupation);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherDesignation", DbType.String, StudentFatherDesignation);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherIncome", DbType.String, StudentFatherIncome);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherName", DbType.String, StudentMotherName);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherContactNo", DbType.String, StudentMotherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherOccupation", DbType.String, StudentMotherOccupation);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherDesignation", DbType.String, StudentMotherDesignation);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherIncome", DbType.String, StudentMotherIncome);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Student
    public int UpdateStudent(int StudentId, string StudentFirstName, string StudentMiddleName, string StudentLastName, string Gender, string dob,string BG, string StudentEnrollmentNo, string StudentRollNo, string StudentAadharNo,
string StudentPhoto, string StudentCorrespondanceAddress, string StudentPermanentAddress, int StateId, int CityId, string Pincode, string HomeContactNo, string StudentContactNo, string StudentFatherName,
string StudentFatherContactNo, string StudentFatherOccupation, string StudentFatherDesignation, string StudentFatherIncome,
string StudentMotherName, string StudentMotherContactNo, string StudentMotherOccupation,
string StudentMotherDesignation, string StudentMotherIncome, string Createdby, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@StudentFirstName", DbType.String, StudentFirstName);
            objDatabase.AddInParameter(objDBCommand, "@StudentMiddleName", DbType.String, StudentMiddleName);
            objDatabase.AddInParameter(objDBCommand, "@StudentLastName", DbType.String, StudentLastName);
            objDatabase.AddInParameter(objDBCommand, "@Gender", DbType.String, Gender);
            objDatabase.AddInParameter(objDBCommand, "@DOB", DbType.String, dob);
            objDatabase.AddInParameter(objDBCommand, "@BloodGroup", DbType.String, BG);
            objDatabase.AddInParameter(objDBCommand, "@StudentEnrollmentNo", DbType.String, StudentEnrollmentNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentRollNo", DbType.String, StudentRollNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentAadharNo", DbType.String, StudentAadharNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentCorrespondanceAddress", DbType.String, StudentCorrespondanceAddress);
            objDatabase.AddInParameter(objDBCommand, "@StudentPermanentAddress", DbType.String, StudentPermanentAddress);
            objDatabase.AddInParameter(objDBCommand, "@StateId", DbType.Int32, StateId);
            objDatabase.AddInParameter(objDBCommand, "@CityId", DbType.Int32, CityId);
            objDatabase.AddInParameter(objDBCommand, "@Pincode", DbType.String, Pincode);
            objDatabase.AddInParameter(objDBCommand, "@HomeContactNo", DbType.String, HomeContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentContactNo", DbType.String, StudentContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherName", DbType.String, StudentFatherName);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherContactNo", DbType.String, StudentFatherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherOccupation", DbType.String, StudentFatherOccupation);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherDesignation", DbType.String, StudentFatherDesignation);
            objDatabase.AddInParameter(objDBCommand, "@StudentFatherIncome", DbType.String, StudentFatherIncome);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherName", DbType.String, StudentMotherName);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherContactNo", DbType.String, StudentMotherContactNo);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherOccupation", DbType.String, StudentMotherOccupation);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherDesignation", DbType.String, StudentMotherDesignation);
            objDatabase.AddInParameter(objDBCommand, "@StudentMotherIncome", DbType.String, StudentMotherIncome);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Student
    public int DeleteStudent(int StudentId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Student
    public DataTable SelectStudent()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Student Id Wise
    public DataTable SelectStudentIdWise(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSudentIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Student Id Wise
    public DataTable SelectStudentIdWiseOptional(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select b.StudentId,b.StudentFirstName+b.StudentMiddleName+b.StudentLastName As 'FullName' from tblStudent b inner join tblOptionalSubject a on b.StudentId = a.StudentId inner join tblAllotment al on a.ClassId = al.ClassId and a.SectionId = al.SectionId inner join tblSubjectMaster s on a.SubjectId = s.SubjectId where a.teacherid = "+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Student Id Wise
    public DataTable SelectStudentIdWiseA()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select b.StudentId,b.StudentFirstName + b.StudentMiddleName + b.StudentLastName+'('+b.StudentRollNo+')' As 'FullName' from tblStudent b inner join tblStudentClassAllotment a on b.StudentId = a.StudentId ";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Student Id Wise 1
    public DataTable SelectStudentIdWise1()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select b.StudentId,b.StudentFirstName+b.StudentMiddleName+b.StudentLastName+'('+b.StudentRollNo+')' As 'FullName'from tblStudent b inner join tblStudentClassAllotment a on b.StudentId = a.StudentId where a.ClassId <= 6";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Student Id Wise 2
    public DataTable SelectStudentIdWise2()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select b.StudentId,b.StudentFirstName+b.StudentMiddleName+b.StudentLastName+'('+b.StudentRollNo+')' As 'FullName'from tblStudent b inner join tblStudentClassAllotment a on b.StudentId = a.StudentId where a.ClassId > 6";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Current Student Id
    public DataTable GetCurrentStudentId()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select IDENT_CURRENT('tblStudent') as 'StudentId'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Allotment
    public int AddStudentAllotment(int StudentId,string IsEntraneExaminationPassed,int ClassId,int SectionId,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStudentClassAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@IsEntraneExaminationPassed", DbType.String, IsEntraneExaminationPassed);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Student Allotment
    public DataTable SelectStudentAllotment()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStudentClassAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Attendance
    public int AddStudentAttendance(int StudentId,string Date,string Month,string Day,string IsPresent_Absent,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddStudentAttendance";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String, Month);
            objDatabase.AddInParameter(objDBCommand, "@Day", DbType.String, Day);
            objDatabase.AddInParameter(objDBCommand, "@IsPresent_Absent", DbType.String, IsPresent_Absent);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Get  Student Class Wise Section Wise
    public DataTable GetStudentClassWiseSectionWise(int classid,int sectionid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select distinct a.StudentId,a.StudentFirstName+a.StudentMiddleName+a.StudentLastName as 'Student Name',a.StudentEnrollmentNo,a.StudentRollNo from tblStudent a inner join tblStudentClassAllotment b on a.StudentId = b.StudentId inner join tblClassMaster c on b.ClassId = c.ClassId inner join tblSectionMaster d on b.sectionid = d.sectionid where b.ClassId = "+classid+" and b.SectionId = "+sectionid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Fee
    public int AddFee(string Date,string Month,int StudentId,int ClassId,int SectionId,int VehicleId,int TutionFee,int LibraryFee,int TrnsportationFee,int Others,string Otherdesc, int TotalFee,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddFee";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Month", DbType.String,Month);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@VehicleId", DbType.Int32, VehicleId);
            objDatabase.AddInParameter(objDBCommand, "@TutionFee", DbType.Int32, TutionFee);
            objDatabase.AddInParameter(objDBCommand, "@LibraryFee", DbType.Int32, LibraryFee);
            objDatabase.AddInParameter(objDBCommand, "@TrnsportationFee", DbType.Int32, TrnsportationFee);
            objDatabase.AddInParameter(objDBCommand, "@Others", DbType.Int32, Others);
            objDatabase.AddInParameter(objDBCommand, "@Otherdesc", DbType.String, Otherdesc);
            objDatabase.AddInParameter(objDBCommand, "@TotalFee", DbType.Int32, TotalFee);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Student Fee
    public DataTable SelectStudentFee()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStudentFee";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Performance
    public int AddStudentPerformance(int StudentId,int ClassId,int SectionId,string PerformanceLevel,string PerfeormanceDscription,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddPerformance";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

           
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@PerformanceLevel", DbType.String, PerformanceLevel);
            objDatabase.AddInParameter(objDBCommand, "@PerfeormanceDscription", DbType.String, PerfeormanceDscription);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Student Performance
    public DataTable SelectStudentPerformance(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStudentPerformance";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Ectra Activity
    public int AddStudentextraactivity(int StudentId,int ClassId,int SectionId,string StudentExtraCurricularActivity,string Description,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddExtraCurricularActivityDetails";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@StudentExtraCurricularActivity", DbType.String, StudentExtraCurricularActivity);
            objDatabase.AddInParameter(objDBCommand, "@Description", DbType.String, Description);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Student Extra Activity
    public DataTable SelectStudentExtraActivity(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectStudentExtraCurricularActivity";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Curriculumn
    public int AddCurriculmn(string Date,string Topic,string Curriculumndesc,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddCurriclumn";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
         
            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Curriculumndesc", DbType.String, Curriculumndesc);
            
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Curriculumn
    public int UpdateCurriculum(int CurriculumnId, string Date, string Topic, string Curriculumndesc)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateCurriCulm";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@CurriculumnId", DbType.Int32, CurriculumnId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Curriculumndesc", DbType.String, Curriculumndesc);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Curriculumn
    public int DeleteCurriculum(int CurriculumnId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteCurriCulm";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@CurriculumnId", DbType.Int32, CurriculumnId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Curriculumn
    public DataTable SelectCurriculumn()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectCurriclumn";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Notice
    public int AddNotice(string Date, string Topic, string Noticedesc, string Createdby, int UserId, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);

            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Noticedesc", DbType.String, Noticedesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Notice
    public int UpdateNotice(int NoticeId, string Date, string Topic, string Noticedesc)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@NoticeId", DbType.Int32, NoticeId);
            objDatabase.AddInParameter(objDBCommand, "@Date", DbType.String, Date);
            objDatabase.AddInParameter(objDBCommand, "@Topic", DbType.String, Topic);
            objDatabase.AddInParameter(objDBCommand, "@Noticedesc", DbType.String, Noticedesc);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Delete
    public int DeleteNotice(int NoticeId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteCurriCulm";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@NoticeId", DbType.Int32, NoticeId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Notice
    public DataTable SelectNtotice()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectNotice";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Top Curriculumn
    public DataTable SelecttopCurriculmn()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "SELECT  TOP 1 Date,Topic,Curriculumndesc FROM tblSchoolManagementCurriculumn order by Date desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Top Notice
    public DataTable SelecttopNtotice()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "SELECT TOP 1 Date,Topic,Noticedesc FROM tblSchoolManagementNotice  order by Date desc";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Class Promotion
    public int AddClassPromotion(int StudentId,int promotedClassId,int promotedSectionId,string IsPromoted,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddClassPromotion";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@promotedClassId", DbType.Int32, promotedClassId);
            objDatabase.AddInParameter(objDBCommand, "@promotedSectionId", DbType.Int32, promotedSectionId);
            objDatabase.AddInParameter(objDBCommand, "@IsPromoted", DbType.String, IsPromoted);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Class Promotion
    public DataTable SelectClassPromotion()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectPromotion";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Update Class Allotment
    public int UpdateClassAllottment(int StudentId, int ClassId, int SectionId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateStudentClassAllottment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
           
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Add Expense
    public int AddExpense(string ItemName,decimal ExpnseInRs,string Expensedesc,string Createdby,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddExpense";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ItemName", DbType.String, ItemName);
            objDatabase.AddInParameter(objDBCommand, "@ExpnseInRs", DbType.Decimal, ExpnseInRs);
            objDatabase.AddInParameter(objDBCommand, "@Expensedesc", DbType.String, Expensedesc);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Expense
    public DataTable SelectExpense()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectExpense";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Shift
    public int AddShifts(string ShiftName,string WprkingTimeStart,string WorkingTimeEnd,string WorkinghHrs,int WorkingDays,string Createdby,int Userid,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddShifts";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ShiftName", DbType.String, ShiftName);

            objDatabase.AddInParameter(objDBCommand, "@WprkingTimeStart", DbType.String, WprkingTimeStart);
            objDatabase.AddInParameter(objDBCommand, "@WorkingTimeEnd", DbType.String, WorkingTimeEnd);

            objDatabase.AddInParameter(objDBCommand, "@WorkinghHrs", DbType.String, WorkinghHrs);
            objDatabase.AddInParameter(objDBCommand, "@WorkingDays", DbType.Int32, WorkingDays);

            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Shift
    public int UpdateShifts(int ShiftId, string ShiftName, string WprkingTimeStart, string WorkingTimeEnd, string WorkinghHrs, int WorkingDays, string Createdby, int Userid, string Updtedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateShifts";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ShiftId", DbType.Int32, ShiftId);
            objDatabase.AddInParameter(objDBCommand, "@ShiftName", DbType.String, ShiftName);

            objDatabase.AddInParameter(objDBCommand, "@WprkingTimeStart", DbType.String, WprkingTimeStart);
            objDatabase.AddInParameter(objDBCommand, "@WorkingTimeEnd", DbType.String, WorkingTimeEnd);

            objDatabase.AddInParameter(objDBCommand, "@WorkinghHrs", DbType.String, WorkinghHrs);
            objDatabase.AddInParameter(objDBCommand, "@WorkingDays", DbType.Int32, WorkingDays);

            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updtedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Shift
    public int DeleteShifts(int ShiftId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteShifts";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ShiftId", DbType.Int32, ShiftId);
            
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Shift
    public DataTable SelectShift()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectShift";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Shift Id Wise
    public DataTable SelectShiftIdWise()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectShiftIdWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Shift Id Wise 1
    public DataTable SelectShiftIdWise1(int ShiftId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectShiftIdWise1";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ShiftId", DbType.Int32, ShiftId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select State
    public DataTable SelectState()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectState";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select City
    public DataTable SelectCity()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectCity";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select City State Id Wise
    public DataTable GetCity(int StateID)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetCity";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@StateID", DbType.Int32, StateID);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Update Admin Password
    public int UpdateAdminPassword(string Pwd)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_ChangeAdminPassWord";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Pwd", DbType.String, Pwd);
            
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Check Staff Salary
    public DataTable CheckStaffSalary(int staffid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Salaryid,Basic,TA,DA,HRA,OtherDeductions,ActualPay from tblStaffSalary where Staffid=" + staffid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Teacher Salary
    public DataTable CheckTeacherSalary(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Salaryid,Basic,TA,DA,HRA,OtherDeductions,ActualPay from tblteacherSalary where teacherid=" + teacherid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Staff Attendance
    public DataTable CheckStaffAttendance(int staffid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select StaffAttendanceId,Date,Month,Day,StaffPresent_Absent from tblStaffAttendance where Staffid=" + staffid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Teacher Attendance
    public DataTable CheckteacherAttendance(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select StaffAttendanceId,Date,Month,Day,StaffPresent_Absent from tblteacherAttendance where teacherid=" + teacherid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region check teacher Salary
    public DataTable CheckteacherSalary(int teacherid, string date, string month)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblGenerateteacherSalary where teacherid=" + teacherid + " And SalaryDate='" + date + "' And StaffMonth='" + month + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Update Staff Password
    public int UpdateStaffPassword(int userid,string Pwd)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_StaffChangepassword";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@userid", DbType.String, userid);
            objDatabase.AddInParameter(objDBCommand, "@Pwd", DbType.String, Pwd);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Get Class Section
    public DataTable GetClassSection(int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetClassSection";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, studentid);
            
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region check Student Fee
    public DataTable CheckStudentFee(int studentid, string date, string month)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStudentFeeDetail where Date='"+date+"' And Month='"+month+"' And StudentId="+studentid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student
    public DataTable GetStudent(int ClassId, int SectionId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetStudent";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student
    public DataTable GetStudentOptionalA(int ClassId, int SectionId,int subjectid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select  st.studentid,st.StudentRollNo,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name' from tblStudentClassAllotment b inner join tblStudent st on b.StudentId = st.StudentId inner join tblOptionalSubject s on b.StudentId = s.StudentId inner join tblClassMaster c on b.ClassId = c.ClassId inner join tblSectionMaster d on b.SectionId = d.SectionId where b.ClassId = "+ClassId+" and b.SectionId = "+SectionId+" And s.SubjectId ="+subjectid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student
    public DataTable GetStudentOptional(int ClassId, int SectionId,int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select  st.studentid,st.StudentRollNo,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name' from tblOptionalSubject b inner join tblStudent st on b.StudentId = st.StudentId inner join tblStudent s on b.StudentId = s.StudentId inner join tblClassMaster c on b.ClassId = c.ClassId inner join tblSectionMaster d on b.SectionId = d.SectionId inner join tblSubjectMaster s1 on b.SubjectId = s1.SubjectId where b.ClassId = "+ClassId+" and b.SectionId = "+SectionId+" and b.teacherid = "+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student Attendance
    public DataTable GetStudenAttendance(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_GetStudentAttendance";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check student Attendance
    public DataTable CheckStudentAttendance(string Date,string Month,string Day)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStudentAttendance where Date='"+Date+"' And Month='"+Month+"' And Day='"+Day+"'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Marks Obtained
    public DataTable CheckMarksObtained(string ExamType,int teacherid,int subid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblMarksObtained where ExamType='"+ExamType+ "' And teacherid="+teacherid+ " And SubId=" + subid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check student Attendance Present
    public DataTable CheckStudentAttendancePresent()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select  st.studentid,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',st.StudentRollNo ,d.ClassName,e.SectionName,b.Date,b.Month,b.Day,b.IsPresent_Absent from tblStudentAttendance b inner join tblStudent st on b.StudentId = st.StudentId inner join tblStudentClassAllotment c on b.StudentId = c.StudentId inner join tblClassMaster d on c.ClassId = d.ClassId inner join tblSectionMaster e on c.SectionId = e.SectionId where b.IsPresent_Absent = 'P'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check student Attendance Absent
    public DataTable CheckStudentAttendanceAbsent()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select  st.studentid,st.StudentFirstName+st.StudentMiddleName+st.StudentLastName as 'Student Name',d.ClassName,e.SectionName,b.* from tblStudentAttendance b inner join tblStudent st on b.StudentId = st.StudentId inner join tblStudentClassAllotment c on b.StudentId = c.StudentId inner join tblClassMaster d on c.ClassId = d.ClassId inner join tblSectionMaster e on c.SectionId = e.SectionId where b.IsPresent_Absent = 'A'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Update teacher Password
    public int UpdateteacherPassword(int teacherid, string Pwd)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_ChangeteacherPassWord";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.String, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@Pwd", DbType.String, Pwd);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region get student Class Section
    public DataTable GetStudentClasssection(int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select ClassId, SectionId, b.StudentFatherContactNo,b.StudentMotherContactNo from tblStudentClassAllotment a inner join tblStudent b on a.StudentId = b.StudentId where a.StudentId = "+studentid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student TC
    public int AddtStudentTC(int StudentId,int ClassId,int SectionId,string IsGeneratedTC,string Description, string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddTC";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@IsGeneratedTC", DbType.String, IsGeneratedTC);
            objDatabase.AddInParameter(objDBCommand, "@Description", DbType.String, Description);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Get Student TC
    public DataTable GetStudentTC()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectTC";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student TC
    public DataTable GetStudentTC1(int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select st.StudentFatherName from tblStudentTC b inner join tblStudent st on b.StudentId = st.StudentId inner join tblClassMaster d on b.ClassId = d.ClassId inner join tblSectionMaster e on b.SectionId = e.SectionId where b.StudentId = "+ studentid + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Marks
    public int AddtStudentMarks(int StudentId, int ClassId, int SectionId,string SemesterType,int Reading,int Writing,int English, 
        int Hindi,int Maths,int Science,int Computers,int SocialStudies,int Health,string PhysicalEducation,string Comment,string Createdby,int Userid,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddMarks";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SemesterType", DbType.String, SemesterType);
            objDatabase.AddInParameter(objDBCommand, "@Reading", DbType.Int32, Reading);
            objDatabase.AddInParameter(objDBCommand, "@Writing", DbType.Int32, Writing);
            objDatabase.AddInParameter(objDBCommand, "@English", DbType.Int32, English);
            objDatabase.AddInParameter(objDBCommand, "@Hindi", DbType.Int32, Hindi);
            objDatabase.AddInParameter(objDBCommand, "@Maths", DbType.Int32, Maths);
            objDatabase.AddInParameter(objDBCommand, "@Science", DbType.Int32, Science);
            objDatabase.AddInParameter(objDBCommand, "@Computers", DbType.Int32, Computers);
            objDatabase.AddInParameter(objDBCommand, "@SocialStudies", DbType.Int32, SocialStudies);
            objDatabase.AddInParameter(objDBCommand, "@Health", DbType.Int32, Health);
            objDatabase.AddInParameter(objDBCommand, "@PhysicalEducation", DbType.String, PhysicalEducation);
            objDatabase.AddInParameter(objDBCommand, "@Comment", DbType.String, Comment);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Check Student Marks 
    public DataTable CheckStudentMarks(int studentid,int classid,int sectionid,string semtype)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStudentMarks where select * from tblStudentMarks where StudentId="+studentid+" And ClassId="+classid+" And SectionId="+sectionid+" And  SemesterType='"+semtype+"'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student Marks
    public DataTable GetStudentMarks()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarks";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student Marks Student Wise
    public DataTable GetStudentMarksStudentWise(int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarksStudentWise";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, studentid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Student Marks Higher Standard
    public int AddtStudentMarksHS(int StudentId, int ClassId, int SectionId,string SemesterType,int  English_Ist,int English_IInd,int Hindi_Ist,int Hindi_IInd,int Math_Ist,int Math_IInd,int Physics,
int Chemistry,int Bio,int Computers,int SocialStudies,string Createdby,int Userid,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_MarksHS";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SemesterType", DbType.String, SemesterType);
            objDatabase.AddInParameter(objDBCommand, "@English_Ist", DbType.Int32, English_Ist);
            objDatabase.AddInParameter(objDBCommand, "@English_IInd", DbType.Int32, English_IInd);
            objDatabase.AddInParameter(objDBCommand, "@Hindi_Ist", DbType.Int32, Hindi_Ist);
            objDatabase.AddInParameter(objDBCommand, "@Hindi_IInd", DbType.Int32, Hindi_IInd);
            objDatabase.AddInParameter(objDBCommand, "@Math_Ist", DbType.Int32, Math_Ist);
            objDatabase.AddInParameter(objDBCommand, "@Math_IInd", DbType.Int32, Math_IInd);
            objDatabase.AddInParameter(objDBCommand, "@Physics", DbType.Int32, Physics);
            objDatabase.AddInParameter(objDBCommand, "@Chemistry", DbType.Int32, Chemistry);
            objDatabase.AddInParameter(objDBCommand, "@Bio", DbType.Int32, Bio);
            objDatabase.AddInParameter(objDBCommand, "@Computers", DbType.Int32, Computers);
            objDatabase.AddInParameter(objDBCommand, "@SocialStudies", DbType.Int32, SocialStudies);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Check Student Marks HS
    public DataTable CheckStudentMarksHS(int studentid, int classid, int sectionid, string semtype)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStudentMarksHigherStandard where StudentId=" + studentid + " And ClassId=" + classid + " And SectionId=" + sectionid + " And  SemesterType='" + semtype + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student Marks Higher Standard
    public DataTable GetStudentMarksHS()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarksHS";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Student Marks HS Student Wise
    public DataTable GetStudentMarksHSStudentWise(int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarksStudentWiseHS";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@StudentId ", DbType.Int32, studentid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Search Student Class Wise
    public DataTable SearchStudentClassWise(int ClassId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Student_Class";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Search Student Class Wise Section Wise
    public DataTable SearchStudent(int ClassId, int sectionid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_Student";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@sectionid", DbType.Int32, sectionid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Class Teacher
    public int AddClassTeacher(int teacherid, int ClassId, int SectionId,string IsClassteacher,  string Createdby, int Userid, string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddClassTeacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@IsClassteacher", DbType.String, IsClassteacher);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Class Teacher
    public int UpdateClassTeacher(int Id,int teacherid, int ClassId, int SectionId, string IsClassteacher, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateClassTeacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Id", DbType.Int32, Id);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@IsClassteacher", DbType.String, IsClassteacher);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Class Teacher
    public int DeleteClassTeacher(int Id)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteClassTeacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@Id", DbType.Int32, Id);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Class Teacher
    public DataTable SelectClassTeacher()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectClassTeacher";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Check Teacher
    public DataTable CheckTeacher(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblClassTeacher where teacherid="+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

//.......................................................................
    #region Add Sub Subject
    public int AddSubSubject(int SubjectId,string SubSubjectName,int Marks,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddSubSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@SubSubjectName", DbType.String, SubSubjectName);
            objDatabase.AddInParameter(objDBCommand, "@Marks", DbType.Int32, Marks);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Sub Subject
    public int UpdateSubSubject(int SubId,int SubjectId, string SubSubjectName, int Marks, string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateSubSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@SubSubjectName", DbType.String, SubSubjectName);
            objDatabase.AddInParameter(objDBCommand, "@Marks", DbType.Int32, Marks);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Total Marks
    public DataTable SelectTotalMarks(int Subjectid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select TotalMarks from tblSubjectMaster where SubjectId="+Subjectid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Delete Sub Subject
    public int DeleteSubSubject(int SubId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteSubSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
     
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Sub Subject
    public DataTable SelectSubSubject()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectSubSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Sub Subject Marks
    public DataTable CheckSubSubjectMarks(int subjectid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Sum(TotalMarks)as 'Marks' from tblSubjectMaster where SubjectId=" + subjectid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Allotment
    public int AddAllotment(int teacherid,int ClassId,int SectionId,int SubId,string Createdby,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Allotment
    public int UpdateAllotment(int AllotmentId, int teacherid, int ClassId, int SectionId, int SubId,  string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@AllotmentId", DbType.Int32, AllotmentId);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Allotment
    public int DeleteAllotment(int AllotmentId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@AllotmentId", DbType.Int32, AllotmentId);

            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Allotment
    public DataTable SelectAllotment()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Class Teacher
    public DataTable CheckClassTeacher(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblClassTeacher ct inner join tblteacher t on t.teacherid = ct.teacherid inner join tblClassMaster cls on ct.ClassId = cls.ClassId inner join tblSectionMaster s on ct.SectionId = s.SectionId where ct.teacherid = "+teacherid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Present Details
    public DataTable CheckPD(string f,string t,int c,int s)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select B.StudentFirstName+' '+B.StudentMiddleName+' '+B.StudentLastName as 'Student Name',B.StudentRollNo,A.Date,A.Month,A.Day,A.IsPresent_Absent from tblStudentAttendance A inner join tblStudent B on A.StudentId = B.StudentId inner join tblStudentClassAllotment C on A.StudentId = C.StudentId where A.Date >= '"+f+"' And A.Date <= '"+t+"' And C.ClassId = "+c+" And C.SectionId = "+s+" And A.IsPresent_Absent = 'p'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Absent Details
    public DataTable CheckAD(string f, string t, int c, int s)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select B.StudentFirstName+' '+B.StudentMiddleName+' '+B.StudentLastName as 'Student Name',B.StudentRollNo,A.Date,A.Month,A.Day,A.IsPresent_Absent from tblStudentAttendance A inner join tblStudent B on A.StudentId = B.StudentId inner join tblStudentClassAllotment C on A.StudentId = C.StudentId where A.Date >= '" + f + "' And A.Date <= '" + t + "' And C.ClassId = " + c + " And C.SectionId = " + s + " And A.IsPresent_Absent = 'A'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Student Details
    public DataTable CheckSD(int c, int s)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select b.StudentId,b.StudentFirstName + b.StudentMiddleName + b.StudentLastName As 'Name',b.StudentRollNo  from tblStudent b inner join tblStudentClassAllotment a on b.StudentId = a.StudentId where a.ClassId =" + c+" and a.SectionId = "+s+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Show Student Attendance Details
    public DataTable ShowSD(string f, string t, int c, int s,int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select B.StudentFirstName+' '+B.StudentMiddleName+' '+B.StudentLastName as 'Name',B.StudentRollNo,A.Date,A.Month,A.Day,A.IsPresent_Absent from tblStudentAttendance A inner join tblStudent B on A.StudentId = B.StudentId inner join tblStudentClassAllotment C on A.StudentId = C.StudentId where A.Date >= '" + f + "' And A.Date <= '" + t + "' And C.ClassId = " + c + " And C.SectionId = " + s + " And A.StudentId="+studentid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Marks Obtained
    public int AddMarksObtained(int ClassId,int SectionId,int SubId,int StudentId,int teacherid,string ExamType,int MarksObt,int UserId,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddMarksObtained";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@ExamType", DbType.String, ExamType);
            objDatabase.AddInParameter(objDBCommand, "@MarksObt", DbType.Int32, MarksObt);
            objDatabase.AddInParameter(objDBCommand, "@UserId", DbType.Int32, UserId);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Update Marks Obtained
    public int UpdateMarksObtained(int ObtId,  int MarksObt,  string Updatedon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_UpdateMarksObtained";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ObtId", DbType.Int32, ObtId);
            objDatabase.AddInParameter(objDBCommand, "@MarksObt", DbType.Int32, MarksObt);
            objDatabase.AddInParameter(objDBCommand, "@Updatedon", DbType.String, Updatedon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Delete Marks Obtained
    public int DeleteMarksObtained(int ObtId)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_DeleteMarksObtained";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            objDatabase.AddInParameter(objDBCommand, "@ObtId", DbType.Int32, ObtId);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Marks Obtained
    public DataTable SelectMarksObtained(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarksObtained";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.String, teacherid);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Total Marks
    public DataTable GetTotalMarks(int subid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select Marks from tblSubSubjectMaster Where SubId="+subid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Student RollNo
    public DataTable CheckStudentRollNo(string rollno)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStudent where StudentRollNo='" + rollno + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check teacher Employee Code
    public DataTable Checkteacheremployeecode(string empcode)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblteacher where employeecode='" + empcode + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Staff Employee Code
    public DataTable CheckStaffemployeecode(string empcode)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from tblStaff where employeecode='" + empcode + "'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Staff Mobile Number
    public DataTable CheckStaffMobilenumber(string number)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select * from tblStaff where StaffMobileNo=" + number + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Teacher Mobile Number
    public DataTable CheckTeacherMobilenumber(string number)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select * from tblteacher where teacherMobileNo=" + number + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Print Roll No.
    public DataTable PrintForm(string rollno)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_PrintForm";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@RollNo", DbType.String, rollno);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Generate ID Card.
    public DataTable GenerateIDCard(int StudentId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_IDCard";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Admin Marks.
    public DataTable AdminViewMarks()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectMarksObtainedAdmin";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Add Optional Subject 
    public int AddOptionalSubject(int ClassId, int SectionId,int SubjectId, int SubId,int teacherid, int StudentId,string StudentAlloted, string Createdby,int Userid,string Createdon)
    {
        int result = 0;
        try
        {

            string _Proc = "proc_AddOptionalSubject";
            Database objDatabase = DatabaseFactory.CreateDatabase();

            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            objDatabase.AddInParameter(objDBCommand, "@SubjectId", DbType.Int32, SubjectId);
            objDatabase.AddInParameter(objDBCommand, "@SubId", DbType.Int32, SubId);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            objDatabase.AddInParameter(objDBCommand, "@StudentId", DbType.Int32, StudentId);
            objDatabase.AddInParameter(objDBCommand, "@StudentAlloted", DbType.String, StudentAlloted);
            objDatabase.AddInParameter(objDBCommand, "@Createdby", DbType.String, Createdby);
            objDatabase.AddInParameter(objDBCommand, "@Userid", DbType.Int32, Userid);
            objDatabase.AddInParameter(objDBCommand, "@Createdon", DbType.String, Createdon);
            result = objDatabase.ExecuteNonQuery(objDBCommand);
        }
        catch (Exception ex)
        {
        }
        return result;
    }
    #endregion

    #region Select Optional Subjects Allotment.
    public DataTable SelectOptionalSubjectsAllotment()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_SelectOptionalSubjectAllotment";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Optional  Subjects.
    public DataTable SelectOptionalSubjects()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select SubjectId,SubjectName from tblSubjectMaster where SubjectType='Optional'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Optional Sub Subjects.
    public DataTable SelectOptionalSubSubjects()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.SubId,a.SubSubjectName from tblSubSubjectMaster a inner join tblSubjectMaster b on a.SubjectId = b.SubjectId where b.SubjectType = 'Optional'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Optional Teacher.
    public DataTable SelectOptionalTeacher()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select a.teacherid,a.Salutation+a.teacherFirstName+a.teacherMiddleName+a.teacherLastName as 'TeacherName' from tblteacher a inner join tblSubjectMaster b on a.SubjectId = b.SubjectId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    # region Check Optional Allotment
    public DataTable CheckOptionalAllotment(int classid,int sectionid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select * from  tblOptionalSubject where ClassId="+classid+" And SectionId="+ sectionid + " ";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Update Optional
    public DataTable UpdateOptional(string a,int b,string c)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "update tblOptionalSubject set StudentAlloted='"+a+ "',Updatedon='"+c+"' where OptionalId=" + b+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region  Delete Optional
    public DataTable DeleteOptional(int b)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "delete from tblOptionalSubject  where OptionalId=" + b + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Admin Marks.
    public DataTable ViewMarks(int ClassId,int SectionId)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_ViewMarks";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@ClassId", DbType.Int32, ClassId);
            objDatabase.AddInParameter(objDBCommand, "@SectionId", DbType.Int32, SectionId);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Teacher Marks.
    public DataTable TeacherMarks(int teacherid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "proc_ViewTeacherMarks";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetStoredProcCommand(_Proc);
            objDatabase.AddInParameter(objDBCommand, "@teacherid", DbType.Int32, teacherid);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Select Optional Student.
    public DataTable SelectOptionalStudent(int subjectid,int studentid)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select* from tblOptionalSubject Where SubjectId="+subjectid+" And StudentId="+studentid+"";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion
    //......................................

    #region Check Admin Mobile Number
    public DataTable CheckAdminMobilenumber(string number)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select username,pwd from tblSchoolUserDetails where Mobile=" + number + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Staff Mobile Number
    public DataTable CheckStafMobilenumber(string number)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select username,pwd from tblStaff where stafftype='Accounts' And StaffMobileNo=" + number + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Check Teacher Mobile Number
    public DataTable CheckeacherMobilenumber(string number)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select username,pwd from tblteacher where teacherMobileNo=" + number + "";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);
            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Search Student 
    public DataTable SearchStudent(string str)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "Select distinct StudentId,StudentFirstName+StudentMiddleName+StudentLastName+StudentRollNo As 'FullName' from tblStudent where StudentFirstName like '%" + str + "%'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Fee
    public DataTable GetFee()
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select f.Date,f.Month,s.StudentFirstName+s.StudentLastName+s.StudentLastName as 'Student Name',c.ClassName,sec.SectionName,v.VehicleType,f.TutionFee,f.LibraryFee,f.TrnsportationFee,f.Others,f.TotalFee from tblStudentFeeDetail f inner join tblStudent s on f.StudentId=s.studentId inner join tblVehicleDetails v on f.VehicleId=v.VehicleId inner join tblClassMaster c on f.ClassId=c.ClassId inner join tblSectionMaster sec on f.SectionId=sec.SectionId";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion

    #region Get Fee Student Name
    public DataTable GetFeeStudentName(string sname)
    {
        DataTable dt = new DataTable();
        try
        {
            string _Proc = "select f.Date,f.Month,s.StudentFirstName+s.StudentLastName+s.StudentLastName as 'Student Name',c.ClassName,sec.SectionName,v.VehicleType,f.TutionFee,f.LibraryFee,f.TrnsportationFee,f.Others,f.TotalFee from tblStudentFeeDetail f inner join tblStudent s on f.StudentId=s.studentId inner join tblVehicleDetails v on f.VehicleId=v.VehicleId inner join tblClassMaster c on f.ClassId=c.ClassId inner join tblSectionMaster sec on f.SectionId=sec.SectionId where s.StudentFirstName+s.StudentLastName+s.StudentLastName='"+sname+"'";
            Database objDatabase = DatabaseFactory.CreateDatabase();
            DbCommand objDBCommand = objDatabase.GetSqlStringCommand(_Proc);

            dt = objDatabase.ExecuteDataSet(objDBCommand).Tables[0];
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.ToString());
        }
        return dt;
    }
    #endregion
}