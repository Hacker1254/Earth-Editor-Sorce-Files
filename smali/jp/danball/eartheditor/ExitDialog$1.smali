.class Ljp/danball/eartheditor/ExitDialog$1;
.super Ljava/lang/Object;
.source "ExitDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/ExitDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/ExitDialog;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/ExitDialog;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/ExitDialog;

    .prologue
    .line 55
    iput-object p1, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    iget-object v0, v0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    iget-object v0, v0, Ljp/danball/eartheditor/ExitDialog;->ad_rect:Ljp/danball/eartheditor/AdBanner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljp/danball/eartheditor/AdBanner;->req_stop:Z

    .line 60
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-virtual {v0}, Ljp/danball/eartheditor/ExitDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finishAffinity()V

    .line 65
    :goto_0
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-virtual {v0}, Ljp/danball/eartheditor/ExitDialog;->dismiss()V

    .line 66
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$1;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-virtual {v0}, Ljp/danball/eartheditor/ExitDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method
