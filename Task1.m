[imgs,sp] = dicomreadVolume("D:\uni\Senior 2 Term 1\Imaging modalities\Task 1\Dataset");
imgs = squeeze(imgs);
imgs = padarray(imgs,[0 0 139],0,'both');%padding both sides to match the image size to be 512*512*512

%Dicom Read Volume function: Reading Dicom Images and creates a 4-D Dicom volume


for i = 1:size(imgs, 3)  
    imshow(mat2gray(rot90(rot90(permute(imgs(:,:,i),[1 2 3]))))); 
%permute function decides which two axes to be shown, here we only need the
%x-y plane (Axial plane)
end

for i = 1:size(imgs, 1)  
    imshow(mat2gray(rot90(permute(imgs(i,:,:),[2 3 1]))));
%regarding the permute fucntion we here convert the y axis to x and the z
%axis to y, therefore we are showing the y-z plane (Coronal plane)
end

for i = 1:size(imgs, 2)  
    imshow(mat2gray(rot90(permute(imgs(:,i,:),[1 3 2]))));
%regarding the permute fucntion we here convert the z axis to y
%therefore we are showing the x and z plane (Sagittal plane)
end



