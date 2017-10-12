<%@ Page Language="C#" Inherits="GuessGame.Default" %>
<!DOCTYPE html>
<html>
    <head runat="server">
	    <title>Default</title>

	    <link href="Content/bootstrap.css" rel="stylesheet">
		<link href="Content/font-awesome.css" rel="stylesheet" />
        <link href="Content/freelancer.css" rel="stylesheet" />
    </head>
    <body>
	    <section class="success" id="guess-game">
            <div class="container">
                <h2 class="text-center">Guess Game</h2>
                <hr class="star-light">
                <div class="row">
                    <div class="col-lg-4 col-lg-offset-4">
                        <form runat="server">
                            <div class="control-group">
                                <div class="form-group controls">
                                    <label>Guess the number between 1 and 100?</label>
                                    <asp:TextBox id="TBNumber" runat="server" CssClass="form-control"></asp:TextBox>
									<asp:CompareValidator id="CompareValidator1" ControlToValidate="TBNumber" runat="server" ErrorMessage="Not a number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                    <p class="help-block" id="AnswerLbl" runat="server"></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Button CssClass="btn btn-primary btn-md" id="VerifyBtn" runat="server" OnClick="Verify_Click" Text="Guess"/>
								<asp:Button CssClass="btn btn-danger btn-md" id="TryAgainBtn" runat="server" OnClick="TryAgain_Click" Text="Try Again" Visible="false"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
