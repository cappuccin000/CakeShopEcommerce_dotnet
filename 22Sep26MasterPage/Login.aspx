<%@ Page Title="Login Form" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_22Sep26MasterPage.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        :root {
            --green: #5fa96a;
            --green-dark: #4c8c56;
            --navy: #1c2532;
            --bg: #f3f3f1;
            --card: #ffffff;
            --text: #33373d;
            --muted: #767b83;
            --border: #e3e3e0;
            box-sizing: border-box;
            padding-top: 0px;
            padding-bottom: 0px;
        }

        * {
            box-sizing: border-box;
        }
        html {
            scroll-padding-top: 0px;
        }

       /* html, body {
            height: 100%;
        }*/

         html, .login_page  {
            height: 100%;
        }

    /*     body{
            margin: 0;
            font-family: "Segoe UI", Helvetica, Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
        }*/

        .login_page {
            margin: 0;
            font-family: "Segoe UI", Helvetica, Arial, sans-serif;
            background: var(--bg);
            color: var(--text);
        }

        .topbar {
            background: var(--navy);
            color: #dfe3e8;
            font-size: 12.5px;
            padding: 9px 24px;
            padding-top: calc(9px + env(safe-area-inset-top,0px));
            display: flex;
            justify-content: flex-end;
        }

        header.site {
            background: #fff;
            padding: 18px 24px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-bottom: 1px solid var(--border);
        }

        .logo {
            font-size: 26px;
            font-weight: 700;
            color: var(--green);
            letter-spacing: .2px;
        }

        main {
            max-width: 640px;
            margin: 0 auto;
            padding: 40px 20px 70px;
        }

        .intro {
            text-align: center;
            margin-bottom: 26px;
        }

            .intro h1 {
                font-size: 26px;
                font-weight: 400;
                margin: 0 0 6px;
                color: var(--text);
            }

                .intro h1 b {
                    color: var(--green);
                    font-weight: 700;
                }

            .intro p {
                font-size: 13.5px;
                color: var(--muted);
                margin: 0;
            }

        .card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 6px;
            padding: 32px;
            box-shadow: 0 2px 10px rgba(0,0,0,.04);
        }

        /*        .grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px 16px;
        }
        */

        .grid {
            display: grid;
            grid-template-columns: 40% 60%;
            min-height: 400px;
        }

        /* Left Side */
        .left-side {
            overflow: hidden;
        }

            .left-side img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                display: block;
            }

        /* Right Side */
        .right-side {
            padding: 50px 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

            .right-side h1 {
                font-size: 32px;
                margin-bottom: 30px;
                color: #222;
            }





        .field {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

            .field.full {
                grid-column: 1 / -1;
            }

        label {
            font-size: 12.5px;
            color: var(--text);
            font-weight: 600;
        }

        input {
            font-family: inherit;
            font-size: 14px;
            padding: 10px 12px;
            border: 1px solid var(--border);
            border-radius: 4px;
            background: #fbfbfa;
            color: var(--text);
            outline: none;
            width: 100%;
        }

            input:focus {
                border-color: var(--green);
                background: #fff;
                box-shadow: 0 0 0 3px rgba(95,169,106,.15);
            }

        .hint {
            font-size: 11px;
            color: #c96a5a;
        }

        .submit-row {
            margin-top: 26px;
        }

            .submit-row input[type="submit"] {
                width: 100%;
                background: var(--green);
                color: #fff;
                border: none;
                font-size: 15px;
                font-weight: 600;
                padding: 13px 20px;
                border-radius: 4px;
                cursor: pointer;
                transition: background .15s ease;
            }

                .submit-row input[type="submit"]:hover {
                    background: var(--green-dark);
                }

        .success-msg {
            text-align: center;
            margin-top: 18px;
            font-size: 13.5px;
            color: var(--green-dark);
            font-weight: 600;
        }

        .foot-note {
            text-align: center;
            margin-top: 18px;
            font-size: 13px;
            color: var(--muted);
        }

            .foot-note a {
                color: var(--green);
                text-decoration: none;
                font-weight: 600;
            }

        @media (max-width:560px) {
            .grid {
                grid-template-columns: 1fr;
            }

            .left-side {
                height: 200px;
            }

            .right-side {
                padding: 30px;
            }

            .card {
                padding: 24px 20px;
            }
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div id="login_page">
       
        <main>
            <div class="intro">
                <h1>Login to your <b>CakeStop</b> account</h1>
                <p>Enter to order, track deliveries and save your favourite cakes.</p>
            </div>
            <div class="card">
                <div class="grid">
                    <div class="left-side">
                        <asp:Image ID="Image1" runat="server" ImageAlign="AbsBottom" ImageUrl="~/assets/img/login_page_img.jpg" Width="400px" />

                    </div>
                    <div class="right-side">
                        <h1><b>Login</b></h1>
                        <div class="field">
                            <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>

                            <%-- validation --%>
                            <%--<asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                                ErrorMessage="Username is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revUsername" runat="server" ControlToValidate="txtUsername"
                                ValidationExpression="^.{3,}$" ErrorMessage="At least 3 characters"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                        <div class="field">
                            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>

                            <%-- validation --%>
                            <%--<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                ErrorMessage="Password is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                ValidationExpression="^.{8,}$" ErrorMessage="At least 8 characters"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                    </div>

                </div>

                <div class="submit-row">
                    <asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click" />
                </div>

                <asp:Label ID="lblMessage" runat="server" CssClass="success-msg" Visible="false"></asp:Label>

                <div class="foot-note">
                    Don't have an account?
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="UserReg.aspx">Sign Up for Users</asp:HyperLink>
                </div>
                <div class="foot-note">
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="AdminReg.aspx">Sign Up for Admin</asp:HyperLink>
                </div>

            </div>
        </main>

    </div>

</asp:Content>
