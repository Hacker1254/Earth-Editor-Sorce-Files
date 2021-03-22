.class Ljp/danball/eartheditor/DialogSimple$2;
.super Ljava/lang/Object;
.source "DialogSimple.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/DialogSimple;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/DialogSimple;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/DialogSimple;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/DialogSimple;

    .prologue
    .line 130
    iput-object p1, p0, Ljp/danball/eartheditor/DialogSimple$2;->this$0:Ljp/danball/eartheditor/DialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 133
    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple$2;->this$0:Ljp/danball/eartheditor/DialogSimple;

    sget-object v1, Ljp/danball/eartheditor/DialogSimple$State;->Cancel:Ljp/danball/eartheditor/DialogSimple$State;

    invoke-static {v0, v1}, Ljp/danball/eartheditor/DialogSimple;->access$002(Ljp/danball/eartheditor/DialogSimple;Ljp/danball/eartheditor/DialogSimple$State;)Ljp/danball/eartheditor/DialogSimple$State;

    .line 134
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 135
    return-void
.end method
