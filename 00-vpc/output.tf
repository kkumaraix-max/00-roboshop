output "vpc_id" {
    value = aws_vpc.roboshop.id
}

output "public_subnet_ids" {
    value = aws_subnet.public[*]
}

output "private_subnet_ids" {
    value = aws_subnet.private[*]
}

output "database_subnet_ids" {
    value = aws_subnet.database[*]
}