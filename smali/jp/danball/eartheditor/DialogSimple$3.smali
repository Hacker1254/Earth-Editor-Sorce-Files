.class Ljp/danball/eartheditor/DialogSimple$3;
.super Ljava/lang/Object;
.source "DialogSimple.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 139
    iput-object p1, p0, Ljp/danball/eartheditor/DialogSimple$3;->this$0:Ljp/danball/eartheditor/DialogSimple;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 142
    sparse-switch p2, :sswitch_data_0

    .line 152
    :goto_0
    return v0

    .line 144
    :sswitch_0
    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple$3;->this$0:Ljp/danball/eartheditor/DialogSimple;

    sget-object v2, Ljp/danball/eartheditor/DialogSimple$State;->Cancel:Ljp/danball/eartheditor/DialogSimple$State;

    invoke-static {v1, v2}, Ljp/danball/eartheditor/DialogSimple;->access$002(Ljp/danball/eartheditor/DialogSimple;Ljp/danball/eartheditor/DialogSimple$State;)Ljp/danball/eartheditor/DialogSimple$State;

    .line 145
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 149
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method
