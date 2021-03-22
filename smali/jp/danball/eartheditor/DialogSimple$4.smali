.class Ljp/danball/eartheditor/DialogSimple$4;
.super Ljava/lang/Object;
.source "DialogSimple.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/danball/eartheditor/DialogSimple;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/danball/eartheditor/DialogSimple;

.field final synthetic val$manager:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/danball/eartheditor/DialogSimple;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Ljp/danball/eartheditor/DialogSimple;

    .prologue
    .line 176
    iput-object p1, p0, Ljp/danball/eartheditor/DialogSimple$4;->this$0:Ljp/danball/eartheditor/DialogSimple;

    iput-object p2, p0, Ljp/danball/eartheditor/DialogSimple$4;->val$manager:Landroid/support/v4/app/FragmentManager;

    iput-object p3, p0, Ljp/danball/eartheditor/DialogSimple$4;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Ljp/danball/eartheditor/DialogSimple$4;->this$0:Ljp/danball/eartheditor/DialogSimple;

    iget-object v1, p0, Ljp/danball/eartheditor/DialogSimple$4;->val$manager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Ljp/danball/eartheditor/DialogSimple$4;->val$tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ljp/danball/eartheditor/DialogSimple;->access$101(Ljp/danball/eartheditor/DialogSimple;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 180
    return-void
.end method
