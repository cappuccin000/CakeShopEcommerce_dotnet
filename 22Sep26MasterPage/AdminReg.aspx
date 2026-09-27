<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="_22Sep26MasterPage.AdminReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Admin— CakeStop</title>

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
            /* padding-top:env(safe-area-inset-top,0px);*/
            padding-top: 0px;
            padding-bottom: 0px;
            /* padding-bottom:env(safe-area-inset-bottom,0px);*/
        }

        * {
            box-sizing: border-box;
        }
        /* html{scroll-padding-top:env(safe-area-inset-top,0px);}*/
        html {
            scroll-padding-top: 0px;
        }

        html, body {
            height: 100%;
        }

        body {
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

        .grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 18px 16px;
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

            .card {
                padding: 24px 20px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="adm_reg_page">
            <div class="topbar">cakestopshop@company.com&nbsp;&nbsp;·&nbsp;&nbsp;010-020-0340</div>
            <header class="site">
                <div class="logo">CakeStop</div>
            </header>

            <main>
                <div class="intro">
                    <h1>Create your Admin <b>CakeStop</b> account</h1>
                    <p>Sign up to view order, track analytics of your cakes.</p>
                </div>
                <div class="card">
                    <div class="grid">
                        <div class="field full">
                            <asp:Label ID="Name" runat="server" Text="Full name"></asp:Label>
                            <asp:TextBox ID="txtFullName" runat="server" placeholder="Jane Doe"></asp:TextBox>
                            <%-- validation --%>
                           <%-- <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName"
                                ErrorMessage="Full name is required" CssClass="hint" Display="Dynamic" />--%>
                        </div>


                        <div class="field">
                            <asp:Label ID="Phone" runat="server" Text="Phone number"></asp:Label>
                            <asp:TextBox ID="txtPhone" runat="server" placeholder="9876543210" TextMode="Phone"></asp:TextBox>
                            <%-- validation --%>
                          <%--  <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                                ErrorMessage="Phone number is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                                ValidationExpression="^[0-9]{7,15}$" ErrorMessage="Enter a valid phone number"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                        <div class="field">
                            <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="you@example.com" TextMode="Email"></asp:TextBox>
                            <%-- validation --%>
                            <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                ErrorMessage="Email is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ErrorMessage="Enter a valid email address"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                        <div class="field">
                            <asp:Label ID="Username" runat="server" Text="Username"></asp:Label>
                            <asp:TextBox ID="txtUsername" runat="server" placeholder="janedoe"></asp:TextBox>
                            <%-- validation --%>
                          <%--  <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                                ErrorMessage="Username is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revUsername" runat="server" ControlToValidate="txtUsername"
                                ValidationExpression="^.{3,}$" ErrorMessage="At least 3 characters"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                        <div class="field">
                            <asp:Label ID="Password" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" placeholder="At least 8 characters" TextMode="Password"></asp:TextBox>
                            <%-- validation --%>
                          <%--  <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                ErrorMessage="Password is required" CssClass="hint" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                ValidationExpression="^.{8,}$" ErrorMessage="At least 8 characters"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                        <div class="field full">
                            <asp:Label ID="ConfirmPassword" runat="server" Text="Confirm password"></asp:Label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" placeholder="Re-enter your password" TextMode="Password"></asp:TextBox>
                            <%-- validation --%>
                           <%-- <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                                ErrorMessage="Please confirm your password" CssClass="hint" Display="Dynamic" />
                            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword"
                                ControlToCompare="txtPassword" ErrorMessage="Passwords don't match"
                                CssClass="hint" Display="Dynamic" />--%>
                        </div>

                    </div>

                    <div class="submit-row">
                        <asp:Button ID="btnSubmit" runat="server" Text="Create Admin account" OnClick="btnSubmit_Click" />
                    </div>

                    <asp:Label ID="lblMessage" runat="server" CssClass="success-msg" Visible="false"></asp:Label>

                    <div class="foot-note">Already have an account?
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Log in</asp:HyperLink></div>
                </div>

            </main>



        </div>
    </form>
</body>
</html>
