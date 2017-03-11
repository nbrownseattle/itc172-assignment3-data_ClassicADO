<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Nicole's Assignment 3</title>

    <link rel="stylesheet" type="text/css" href="Styles.css" />

</head>
<body>
    <div id="wrapper">
   <header>
       <h1>Community Assist Services</h1>

</header>
    <div>
        <aside>
    <form id="form1" runat="server">
    
    
        <h3>Login page</h3>

        <table>
            <tr>
                <td>User Name</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server"
                        TextMode="Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Text="Log in" OnClick="LoginButton_Click" />

                </td>
                <td>
                    <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>

                </td>
            </tr>

        </table>  

</form>
</aside>
        <main>
            <h3>About us</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultrices dui tortor. Duis consectetur condimentum ultricies. Phasellus viverra velit a risus laoreet porta. Vivamus a venenatis ligula, vitae dignissim ipsum. Mauris massa enim, fringilla at dapibus convallis, accumsan ac est. Quisque malesuada facilisis justo sit amet congue. Pellentesque eget ex ac urna interdum porttitor sed vel nunc. Pellentesque at massa nibh. Vestibulum lacinia eu diam eu ullamcorper. Maecenas quis rhoncus nunc. Duis semper eros vel ornare facilisis. Aenean purus urna, sollicitudin vel eros vel, semper posuere elit. Donec auctor lacus et egestas consectetur. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus eleifend fringilla venenatis.</p>
</main>
</div>
</body>
</html>
    <footer>

</footer>
