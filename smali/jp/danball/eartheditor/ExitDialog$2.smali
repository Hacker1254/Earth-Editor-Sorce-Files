.class Ljp/danball/eartheditor/ExitDialog$2;
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
    .line 75
    iput-object p1, p0, Ljp/danball/eartheditor/ExitDialog$2;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Ljp/danball/eartheditor/ExitDialog$2;->this$0:Ljp/danball/eartheditor/ExitDialog;

    invoke-virtual {v0}, Ljp/danball/eartheditor/ExitDialog;->dismiss()V

    .line 79
    return-void
.end method
