<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="Ckeditor_Project.Editor" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="container">
            <div class="row">
                <div class="col-sm-1">
                </div>
                <div class="col-sm-10">
                    <CKEditor:CKEditorControl ID="CKEditor1" BasePath="/ckeditor/" Height="200" runat="server">
                    </CKEditor:CKEditorControl>
                </div>
                <div class="col-sm-1">
                </div>
            </div>
            <div class="row ">
                <center> <asp:Button Text="Submit" CssClass="btn btn-success" ID="btnsubmit" OnClick="btnsubmit_Click" runat="server" /></center>
            </div>

            <div class="row">
                <div class="col-sm-1">
                </div>
                <div class="col-sm-10">
                    <asp:GridView ID="gridcategory" PagerStyle-CssClass="GridPager" runat="server" Width="100%" align="center" ShowFooter="false" PageSize="5" CssClass="table table-striped" AllowPaging="true" AutoGenerateColumns="False" EmptyDataText="No records found.." BackColor="White" BorderColor="#CCCCCC" EmptyDataRowStyle-ForeColor="Red" BorderStyle="None" BorderWidth="1px" CellPadding="3" AlternatingRowStyle-Wrap="False">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID"></asp:BoundField>
                            <asp:TemplateField HeaderText="Editor Text">
                                <ItemTemplate>
                                    <asp:Label ID="lbltext" runat="server" Text='<%#Eval("Text") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                </div>
                <div class="col-sm-1">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
