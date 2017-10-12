using System;
using System.Web;
using System.Web.UI;

namespace GuessGame
{

    public partial class Default : System.Web.UI.Page
    {
        protected void generateHiddenNumber()
        {
            Random r = new Random();
            Session["hiddenNumber"] = r.Next(100) + 1;
        }

        protected void Page_Load(object sender, EventArgs args)
        {
            if (!Page.IsPostBack)
            {
                generateHiddenNumber();
            }
        }

        protected void Verify_Click(object sender, EventArgs args)
        {
            try
            {
                if (Session["hiddenNumber"] == null)
                {
                    generateHiddenNumber();
                }

                int hiddenNumber = (int)Session["hiddenNumber"];
                int guessedNumber = int.Parse(TBNumber.Text);

                if (guessedNumber == hiddenNumber)
                {
                    AnswerLbl.InnerText = "You guessed right!";
                    VerifyBtn.Visible = false;
                    TryAgainBtn.Visible = true;
                }
                else if (guessedNumber < hiddenNumber)
                {
                    AnswerLbl.InnerText = "Hidden number is higher";
                }
                else
                {
                    AnswerLbl.InnerText = "Hidden number is lower";
                }
            }
            catch (Exception)
            {
                AnswerLbl.InnerText = "Not a number!";
            }
        }

        protected void TryAgain_Click(object sender, EventArgs args)
        {
            generateHiddenNumber();

            TBNumber.Text = "";
            AnswerLbl.InnerText = "";
            TryAgainBtn.Visible = false;
            VerifyBtn.Visible = true;
        }
    }
}