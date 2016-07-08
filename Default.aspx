<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DisplayExample._Default" %>
 
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Quicksand:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="style.css" />
</head>


<body>
    <form runat="server">
    <div class="centCol">
        <div class="FirstLayer">
            <div class="FirstLeft">
                <asp:Image ID="retailerLogo" runat="server" Width="250px"  BorderWidth="0px" Height="80px" />
            </div>
           
            <div class="FirstRight">
                <asp:Label runat="server" style="color: #0552A2;font-size: 15px;padding-left:16px;"><b>Sales Person Name : </asp:Label><asp:TextBox ID="TextBox1" Width="150px" style="text-align:right;" runat="server"></asp:TextBox><br>
                <asp:Label runat="server" style="color: #0552A2;font-size: 15px;"><b>Sales Person Contact : </asp:Label><asp:TextBox ID="TextBox2" Width="150px" style="text-align:right;" runat="server"></asp:TextBox><br>
                <asp:Label ID="RetailerName" runat="server" Text="" Style="font-weight:900; float:right;"></asp:Label><br>
                <asp:Label ID="RetailerAddress" runat="server" Text="" Style="font-weight:400; float:right;"></asp:Label><br>
                <asp:Label ID="RetailerContact" runat="server" Text="" Style="font-weight:400; float:right;"></asp:Label><br>
                <asp:Label ID="RetailerEmail" runat="server" Text="" Style="font-weight:400; float:right;"></asp:Label>
            </div>
          
        </div><br><br><br><br>
 
        <div class="SecondLayer">
            <asp:Label ID="Label1" runat="server" Text="Label" style="color: #0552A2;font-size: 45px;">QUOTATION.</asp:Label><br>
        </div>
        <div id="Line"> <hr width="890px" align="left" color="#0552A2" /></div><br>
        <div class="ThirdLayer">
            <div class="ThirdLeft">
                 <asp:Image ID="TireImg" runat="server" Width="140px" Height="150px" style="padding-top:35px;"/>  
            </div>
            <div class="ThirdCenter">
                <asp:Label ID="TireDescription" runat="server"></asp:Label><br><br>
                <asp:Label runat="server" Style="font-size:13px">Customer Information</asp:Label>
                <asp:TextBox ID="CustomerInfo" runat="server" width="380px" Height="120px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <div class="ThirdRight">
                <asp:Label ID="Label2" runat="server" Text="Label" style="color:#0552A2;padding-left:10px;">Total Cost</asp:Label><br>   
                <asp:Label ID="BigTotal" runat="server"  Width="245px" Height="65px" Text="Label" BackColor="#0552A2" style="color:white;font-size:50px;font-weight:200;text-align:right;padding-right:20px;margin-left:10px;"><center></center></asp:Label> 
            </div>
            
        </div>
        <div class="fourthLayer"><center>
            <asp:Table ID="Table1" runat="server" Height="350px" Width="900px">
                <asp:TableHeaderRow runat="server" BackColor="#0552A2" style="color:white">
                    <asp:TableHeaderCell class="TablePadding" runat="server" Width="147px">
                        
                        
                        <asp:DropDownList ID="DropDownMarkupList" runat="server" OnSelectedIndexChanged="DropDownMarkupList_SelectedIndexChanged"  AutoPostBack="True">
                        </asp:DropDownList>

                    </asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server">Description</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server">Unit Cost</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server">Unit</asp:TableHeaderCell>
                    <asp:TableHeaderCell runat="server">Cost</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow runat="server"> </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding"><b>Product</asp:TableCell>
                    <asp:TableCell runat="server" ID="TireDesc" class="TablePadding"></asp:TableCell>
                   <asp:TableCell runat="server" ID="TireUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                      <asp:DropDownList ID="DropDownTireUnit" style="font-family:'Quicksand', sans-serif;font-size:15px" OnSelectedIndexChanged="DropDownTireUnit_SelectedIndexChanged"  AutoPostBack="True" runat="server">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem selected="True" Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="TiretotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding" ><b>Installation</asp:TableCell>
                    <asp:TableCell runat="server" class="TablePadding">Valve Stem</asp:TableCell>
                    <asp:TableCell runat="server" ID="ValveUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                          <asp:DropDownList ID="DropDownValveUnit" style="font-family:'Quicksand', sans-serif;font-size:15px" runat="server" OnSelectedIndexChanged="DropDownValveUnit_SelectedIndexChanged"  AutoPostBack="True">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="ValveTotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding"></asp:TableCell>
                    <asp:TableCell runat="server" class="TablePadding">Wheel Balance</asp:TableCell>
                    <asp:TableCell runat="server" ID="BalanceUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                          <asp:DropDownList ID="DropDownBalanceUnit" style="font-family:'Quicksand', sans-serif;font-size:15px" runat="server" OnSelectedIndexChanged="DropDownBalanceUnit_SelectedIndexChanged"  AutoPostBack="True">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="BalanceTotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding"></asp:TableCell>
                    <asp:TableCell runat="server" class="TablePadding">Mounting Tires</asp:TableCell>
                    <asp:TableCell runat="server" ID="MountingUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                          <asp:DropDownList ID="DropDownMountingUnit"  style="font-family:'Quicksand', sans-serif;font-size:15px" runat="server" OnSelectedIndexChanged="DropDownMountingUnit_SelectedIndexChanged"  AutoPostBack="True">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="MountingTotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding"></asp:TableCell>
                    <asp:TableCell runat="server" class="TablePadding">Old Tire Disposal</asp:TableCell>
                    <asp:TableCell runat="server" ID="DisposalUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                          <asp:DropDownList ID="DropDownDisposalUnit" style="font-family:'Quicksand', sans-serif;font-size:15px" runat="server" OnSelectedIndexChanged="DropDownDisposalUnit_SelectedIndexChanged"  AutoPostBack="True">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="DisposalTotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" class="TablePadding"></asp:TableCell>
                    <asp:TableCell runat="server" class="TablePadding">Alignment</asp:TableCell>
                    <asp:TableCell runat="server" ID="AlignmentUnitCost" CssClass="Money"></asp:TableCell>
                    <asp:TableCell runat="server"><center><div class="dropdown-wrapper">
                          <asp:DropDownList ID="DropDownAlignmentUnit" CssClass="dropdonwlist" style="font-family:'Quicksand', sans-serif;font-size:15px" runat="server" OnSelectedIndexChanged="DropDownAlignmentUnit_SelectedIndexChanged"  AutoPostBack="True">
                          <asp:ListItem Text="0" Value="0"></asp:ListItem>
                          <asp:ListItem Text="1" Value="1"></asp:ListItem>
                          <asp:ListItem Text="2" Value="2"></asp:ListItem>
                          <asp:ListItem Text="3" Value="3"></asp:ListItem>
                          <asp:ListItem Text="4" Value="4"></asp:ListItem>
                          <asp:ListItem Text="5" Value="5"></asp:ListItem>
                          <asp:ListItem Text="6" Value="6"></asp:ListItem>
                      </asp:DropDownList></div></center>
                    </asp:TableCell>
                    <asp:TableCell runat="server" ID="AlignmentTotalCost" CssClass="Money"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server"  BackColor="#e6eeff">
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="#e6eeff" class="TablePadding">Sub Total</asp:TableCell>
                    <asp:TableCell runat="server" BackColor="#e6eeff" CssClass="Money"  ID="SubtotalCost"></asp:TableCell>
                 </asp:TableRow>
                <asp:TableRow runat="server" BackColor="#e6eeff">
                    <asp:TableCell runat="server" BackColor="white"><asp:Label ID="Label10" runat="server" Text="Label">Quotation validity</asp:Label></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white">
                        <asp:DropDownList ID="DropDownValidDate" runat="server"   AutoPostBack="True">
                            <asp:ListItem Text="1 Day" Value="1 Day"></asp:ListItem>
                          <asp:ListItem Text="2 Days" Value="2 Days"></asp:ListItem>
                          <asp:ListItem Text="3 Days" Value="3 Day"></asp:ListItem>
                          <asp:ListItem Text="1 Week" Value="1 Week"></asp:ListItem>
                          <asp:ListItem Text="2 Weeks" Value="2 Weeks"></asp:ListItem>
                          <asp:ListItem Text="3 Weeks" Value="3 Weeks"></asp:ListItem>
                          <asp:ListItem Text="1 Month" Value="1 Month"></asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server"  class="TablePadding">Tax</asp:TableCell>
                    <asp:TableCell runat="server" ID="Taxtotal" CssClass="Money"></asp:TableCell>
                </asp:TableRow >
                    <asp:TableRow runat="server"  BackColor="#0552A2" >
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server" BackColor="white"></asp:TableCell>
                    <asp:TableCell runat="server"   style="color:white;" class="TablePadding">Total Cost</asp:TableCell>
                    <asp:TableCell runat="server"   style="color:white;" CssClass="Money" ID="Totalcost"></asp:TableCell>
                </asp:TableRow>
                </asp:table>
          </center></div><div style="clear:both;"></div>
          <div class="FifthLayer">

              
                  <asp:Label ID="ShowTaxInfo" runat="server" style="font-size:12px;" Text="Label"></asp:Label><br>
                  <asp:Label ID="ShowFetInfo" runat="server" style="font-size:12px;" Text="Label"></asp:Label>  
          </div><br><br><br><br><br><br><br>


        <div class="SixthLayer">
            <div class="SixthLeft">
                <asp:Label ID="Label3" runat="server" Text="Label">Quotation prepared By </asp:Label>
            </div>
            <div class="SixthRight">
              
            </div>
        </div><br><br><br><br><br><br>
       
          
         
         <div id="Line1"> <hr width="890px" align="left" color="#0552A2" /></div><br>
         <div class="SeventhLayer">
             <asp:Label ID="VaildDate" runat="server" Text="Label"></asp:Label>
         </div>
        
        <div class="LastLayer"><center><br>
               <input id ="printbtn" type="button" value="PRINT THIS PAGE" onclick="window.print();" ><br></center>
           <asp:Label ID="Label11" class="notOnPrint" runat="server" style="font-size:15px;color:red;" Text="Label" ><b>Please read before printing</b></asp:Label><br><br>  
           <asp:HyperLink ID="HyperLink1" runat="server" class="notOnPrint" NavigateUrl="~/PrintInstruction.pdf">** View Instructions for Printing **</asp:HyperLink><br><br>
           <asp:Label ID="LogoInfo" class="notOnPrint" runat="server" style="font-size:12px;color:red;" Text="Label">You can upload your comapy logo image at General Details tab - Upload Logo .</asp:Label><br><br>
           <asp:Label ID="Label4" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">Print Background Color</asp:Label><br>
           <asp:Label ID="Label5" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">----Chrome : PRINT THIS PAGE - Click More settings on left side - Check Background graphics </asp:Label><br>
           <asp:Label ID="Label6" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">----IE : Mouse right click - Print Preview - Tool button top left cornor - Check Print Background Colors and Images   </asp:Label><br><br>
           <asp:Label ID="Label7" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">Clear Header & Footer</asp:Label><br>
           <asp:Label ID="Label8" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">----Chrome : PRINT THIS PAGE - Click More settings on left side - Uncheck Headers and footers </asp:Label><br>
           <asp:Label ID="Label9" class="notOnPrint" runat="server" style="font-size:12px;" Text="Label">----IE : Mouse right click - Print Preview - Tool button at the top left cornor - Change to Empty for Headers and Footers   </asp:Label><br><br>
            
        </div>

    </form>
</body>
</html>