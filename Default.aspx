<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Curier_Client_Portal.WebForm1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="contentbody" runat="server">

              <div class="container">
                    <div class="grid">
                        <div class="row">

                            <div class="span9">

                                <div style="background: url(images/b1.jpg) top left no-repeat; background-size: cover; height: 300px;">
                                    <div class="container" style="padding: 50px 20px">
                                        <h1 class="fg-white">Vlient Portal</h1>
                                        <h2 class="fg-white">Manage your details clean<br />
                                            Stay updated with your package.
                                        </h2>

                                        <a href="#"
                                            class="place-left button bg-darkRed bg-hover-red fg-white fg-hover-white bd-orange" style="margin-top: 10px">
                                            <h3 style="margin: 10px 40px">Read more <span class="icon-download-2 on-right"></span></h3>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <div class="span5">
                                <div class="example">
                                    
                                        <fieldset>
                                            <legend>Login</legend>
                                            <label>User Name</label>
                                            <div class="input-control text" data-role="input-control">
                                                <asp:TextBox ID="username" runat="server"></asp:TextBox>
                                                <button type="button" class="btn-clear" tabindex="-1"></button>
                                            </div>
                                            <label>Password</label>
                                            <div class="input-control password" data-role="input-control">
                                                <asp:TextBox ID="upassword" runat="server" TextMode="Password"></asp:TextBox>
                                                <button type="button" class="btn-reveal" tabindex="-1"></button>
                                            </div>

                                            <asp:Button ID="loginsubmit" runat="server" Text="Submit" OnClick="loginsubmit_Click" />
                                            <asp:Button ID="requestsubmit" runat="server" Text="Request New Account" OnClick="requestsubmit_Click" />
                                        </fieldset>
                                   

                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="container">
                    <div class="grid fluid">
                        <div class="row">
                            <div class="span4 bg-amber padding20 text-center">
                                <h2 class="fg-white">Safe & Fast</h2>
                            </div>
                            <div class="span4 bg-green padding20 text-center">
                                <h2 class="fg-white">Easy & Happy</h2>
                            </div>
                            <div class="span4 bg-red padding20 text-center">
                                <h2 class="fg-white">Organized & Managed</h2>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="container">
                    <div class="padding20 bg-grayLighter">
                        <p>This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.This is a Introduction text.</p>
                    </div>
                </div>



</asp:Content>

