//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Sep 17 2017 16:24:48).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

@class ICFolderListViewController, NoteCollectionObject;
@protocol ICNoteContainer;

@protocol ICFolderListDelegate
- (void)folderListDidCancel:(ICFolderListViewController *)arg1;
- (void)folderList:(ICFolderListViewController *)arg1 didSelectNoteCollection:(NoteCollectionObject *)arg2 cellFrame:(struct CGRect)arg3;
- (void)folderList:(ICFolderListViewController *)arg1 didSelectNoteContainer:(id <ICNoteContainer>)arg2;
@end

