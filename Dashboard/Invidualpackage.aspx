<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/backlayout.Master" AutoEventWireup="true" CodeBehind="Invidualpackage.aspx.cs" Inherits="Curier_Client_Portal.Dashboard.WebForm3" %>

<asp:Content ID="Content4" ContentPlaceHolderID="contentbody" runat="server">



    <div class="container">
        <div class="grid">
            <div class="row">

                <div class="panel">
                    <div class="panel-header">
                        Upload Package File
                    </div>
                    <div class="panel-content">


                        <fieldset>
                            <div class="span6">
                                <label>Reciver Name</label>
                                <div class="input-control text" data-role="input-control">
                                    <asp:TextBox ID="recivername" runat="server"></asp:TextBox>
                                    <button class="btn-clear" tabindex="-1"></button>
                                </div>

                                <label>Address 1</label>
                                <div class="input-control text" data-role="input-control">
                                    <asp:TextBox ID="add1" runat="server"></asp:TextBox>
                                    <button class="btn-clear" tabindex="-1"></button>
                                </div>

                                <label>Address 3</label>
                                <div class="input-control text" data-role="input-control">
                                    <asp:TextBox ID="add3" runat="server"></asp:TextBox>
                                    <button class="btn-clear" tabindex="-1"></button>
                                </div>

                                
                            </div>


                            <div class="span6">
                                <div class="span6">
                                    <label>Contact Number</label>
                                    <div class="input-control text" data-role="input-control">
                                        <asp:TextBox ID="contactno" runat="server"></asp:TextBox>
                                        <button class="btn-clear" tabindex="-1"></button>
                                    </div>

                                    <label>Address 2</label>
                                    <div class="input-control text" data-role="input-control">
                                        <asp:TextBox ID="add2" runat="server"></asp:TextBox>
                                        <button class="btn-clear" tabindex="-1"></button>
                                    </div>

                                    <label>City</label>
                                    <div class="input-control text" data-role="input-control">
                                        <asp:TextBox ID="city" runat="server"></asp:TextBox>
                                        <button class="btn-clear" tabindex="-1"></button>
                                    </div>

                                </div>
                            </div>

                            <div class="row">
                            <div class="span12">
                                    <label>Description</label>
                                    <div class="input-control text" data-role="input-control">
                                        <asp:TextBox ID="deldesc" runat="server" TextMode="MultiLine" Width="925px" Height="50px"></asp:TextBox>
                                        <button class="btn-clear" tabindex="-1"></button>
                                    </div>
                            </div>
                                </div>
                            
                            
                            <hr />

                            <div class="row">
                            <div class="span4"></div>
                            
                            <div class="span4">


                                <asp:Button ID="submit" runat="server" Text="Submit Details" OnClick="submit_Click" />



                            </div>   

                            <div class="span4"></div>
                                </div>
                        </fieldset>


                    </div>
                </div>

            </div>
        </div>
    </div>
















</asp:Content>
