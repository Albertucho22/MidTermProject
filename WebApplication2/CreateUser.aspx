<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="WebApplication2.CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div>
        </div>
        Documento:<asp:FileUpload ID="document" runat="server" />
        <br />
        <br />
        TipoDocumento:<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <br />
        Nombres:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Apellidos:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            FechaNacimiento:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            Sexo:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            EstadoCivil:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            FechaIngreso:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        Nacionalidad:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <p>
            Foto:<asp:FileUpload ID="image" runat="server" />
        </p>
        <p>
            NivelAcademico:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </p>
        <p>
            TieneEmpleo:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Censar" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                <asp:BoundField DataField="TipoDocumento" HeaderText="TipoDocumento" SortExpression="TipoDocumento" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
                <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
                <asp:BoundField DataField="EstadoCivil" HeaderText="EstadoCivil" SortExpression="EstadoCivil" />
                <asp:BoundField DataField="FechaIngreso" HeaderText="FechaIngreso" SortExpression="FechaIngreso" />
                <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" SortExpression="Nacionalidad" />
                <asp:BoundField DataField="NivelAcademico" HeaderText="NivelAcademico" SortExpression="NivelAcademico" />
                <asp:CheckBoxField DataField="TieneEmpleo" HeaderText="TieneEmpleo" SortExpression="TieneEmpleo" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
